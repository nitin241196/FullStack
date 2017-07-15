class SelectController < ApplicationController
  before_filter :authenticate_user!



      def index       #getmethod
      if current_user.ismanager == true
      @users = User.all.order("fullname ASC")
      end
    end

    def listemployee
      if current_user.isemployee
    @users =User.all.order("fullname ASC ")
  end
    if current_user.ismanager
      @users =User.where(managername: current_user.fullname).order("fullname ASC ")
    end
  end

    def listmanager
    @users =User.all.order("fullname ASC ")
    end


def transfertask   #postmethod
    fullname = params[:transfertofullname]
    todoid =params[:todo]
    todo=Todo.where(id: todoid).first
    todo.transferredto=fullname
    todo.transferredby=current_user.fullname
    newuser= User.where(fullname: fullname).first
    newtodo=Todo.new
    newtodo.content=todo.content
    newtodo.transferredto=fullname
    newtodo.transferredby=current_user.fullname
    newtodo.user_id=newuser.id
    newtodo.save
    todo.save
    return redirect_to '/todos'

end

def assigntask   #postmethod
  fullname = params[:assigntofullname]
  todoid =params[:todo]
  todo=Todo.where(id: todoid).first
  deadline=todo.deadline
  todo.assignedto=fullname
todo.assignedby=current_user.fullname
  newuser= User.where(fullname: fullname).first
  newtodo=Todo.new
  newtodo.content=todo.content
  newtodo.assignedto=fullname
newtodo.assignedby=current_user.fullname
  newtodo.deadline=todo.deadline
  newtodo.user_id=newuser.id
  new
  newtodo.save
  todo.save
  return redirect_to '/todos'

end


# def transfertask   #postmethod
#
#   email = params[:assigntoemail]
#   todoid =params[:todo]
#
#   todo=Todo.where(id: todoid).first
#
#   # user= todo.user
#                              # puts user.email
#                              # puts todo.transferredto.class
#   todo.assignedto=email
#   todo.save
#   # puts todo.transferredto
#
#                              # puts user.email
#   return redirect_to '/todos'
#                              # @users = User.where(ismanager: true)
#                              # puts @users
# end


	def done     #postmethod
		email = params[:email]
		puts email
		user = User.where(email: email).first

			user.isemployee =!user.isemployee
      if user.isemployee
      user.managername=current_user.fullname
    else
      user.managername=""
    end
      puts user.managername
			user.save
			puts user.isemployee
		return redirect_to '/select/index'
	end

end

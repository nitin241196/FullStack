class RemoveAssignedtoIdFromTodos < ActiveRecord::Migration
  def change
    remove_column :todos, :assignedto_id, :integer
  end
end

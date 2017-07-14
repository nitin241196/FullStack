class RemoveAssignedbyIdFromTodos < ActiveRecord::Migration
  def change
    remove_column :todos, :assignedby_id, :integer
  end
end

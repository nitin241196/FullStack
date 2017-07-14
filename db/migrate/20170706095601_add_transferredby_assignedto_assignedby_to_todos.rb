class AddTransferredbyAssignedtoAssignedbyToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :transferredby, :string
    add_column :todos, :assignedto, :string
    add_column :todos, :assignedby, :string
  end
end

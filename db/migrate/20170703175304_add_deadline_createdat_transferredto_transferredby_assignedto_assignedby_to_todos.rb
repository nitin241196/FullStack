class AddDeadlineCreatedatTransferredtoTransferredbyAssignedtoAssignedbyToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :deadline, :datetime
    add_column :todos, :createdat, :datetime
    add_reference :todos, :transferredto, index: true, foreign_key: true
    add_reference :todos, :transferredby, index: true, foreign_key: true
    add_reference :todos, :assignedto, index: true, foreign_key: true
    add_reference :todos, :assignedby, index: true, foreign_key: true
  end
end

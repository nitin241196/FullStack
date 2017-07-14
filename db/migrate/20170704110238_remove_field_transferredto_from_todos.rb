class RemoveFieldTransferredtoFromTodos < ActiveRecord::Migration
  def change
    remove_reference :todos, :transferredto, index: true, foreign_key: true
  end
end

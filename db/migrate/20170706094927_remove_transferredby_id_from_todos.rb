class RemoveTransferredbyIdFromTodos < ActiveRecord::Migration
  def change
    remove_column :todos, :transferredby_id, :integer
  end
end

class AddTransferredtoToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :transferredto, :string
  end
end

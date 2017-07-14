class RemoveCreatedatFromTodos < ActiveRecord::Migration
  def change
    remove_column :todos, :createdat, :datetime
  end
end

class AddIsemployeeToUser < ActiveRecord::Migration
  def change
    add_column :users, :isemployee, :boolean
  end
end

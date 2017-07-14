class AddIsmanagerToUser < ActiveRecord::Migration
  def change
    add_column :users, :ismanager, :boolean
  end
end

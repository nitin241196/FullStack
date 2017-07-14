class AddManagernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :managername, :string
  end
end

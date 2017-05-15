class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :phone, :string
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
    add_column :users, :city, :string
    add_column :users, :address, :string
  end
end

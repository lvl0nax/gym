class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :surname, :string
  	add_column :users, :patronymic, :string
  	add_column :users, :birthday, :date
  	add_column :users, :city, :string
  	add_column :users, :country, :string
  	add_column :users, :phone, :string
  end
end

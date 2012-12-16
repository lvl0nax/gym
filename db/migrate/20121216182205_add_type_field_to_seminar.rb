class AddTypeFieldToSeminar < ActiveRecord::Migration
  def change
  	add_column :seminars, :semtype, :integer
  end
end

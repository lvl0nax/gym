class AddReferenceToInstructors < ActiveRecord::Migration
  def change
  	add_column :instructors, :filial_id, :integer
  end
end

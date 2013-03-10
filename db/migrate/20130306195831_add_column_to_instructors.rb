class AddColumnToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :shortdesc, :text
  end
end

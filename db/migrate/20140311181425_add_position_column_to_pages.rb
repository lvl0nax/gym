class AddPositionColumnToPages < ActiveRecord::Migration
  def change
    add_column :pages, :position, :string, default: 1
  end
end

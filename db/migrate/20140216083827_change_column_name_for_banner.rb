class ChangeColumnNameForBanner < ActiveRecord::Migration
  def up
    rename_column :banners, :type, :position
    change_column :banners, :position, :integer, default: 0, null: false
  end

  def down
    rename_column :banners, :position, :type
  end
end

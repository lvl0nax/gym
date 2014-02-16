class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :pic
      t.integer :type
      t.string :link_url

      t.timestamps
    end
  end
end

class CreateTopimages < ActiveRecord::Migration
  def change
    create_table :topimages do |t|
      t.string :header
      t.string :alt
      t.string :slogan

      t.timestamps
    end
  end
end

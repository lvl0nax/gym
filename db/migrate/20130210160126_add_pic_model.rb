class AddPicModel < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :photo
      t.string :alt
      t.text :description
      t.references :album

      t.timestamps
    end
    add_index :pics, :album_id
  end
end

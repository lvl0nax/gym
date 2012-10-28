class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :photo
      t.string :alt
      t.text :description

      t.timestamps
    end
  end
end

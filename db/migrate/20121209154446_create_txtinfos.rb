class CreateTxtinfos < ActiveRecord::Migration
  def change
    create_table :txtinfos do |t|
      t.string :tag
      t.text :content

      t.timestamps
    end
  end
end

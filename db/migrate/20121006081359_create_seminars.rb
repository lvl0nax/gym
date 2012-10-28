class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.string :title
      t.text :shortc
      t.text :content
      t.string :meta_title
      t.text :meta_desc
      t.string :meta_key

      t.timestamps
    end
  end
end

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.string :meta_title
      t.text :meta_desc
      t.string :meta_key

      t.timestamps
    end
  end
end

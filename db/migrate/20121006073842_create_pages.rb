class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :meta_title
      t.text :meta_desc
      t.string :meta_key

      t.timestamps
    end
  end
end

class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user
      t.text :body
      t.string :name

      t.timestamps
    end
  end
end

class AddPhotoToFilial < ActiveRecord::Migration
  def change
  	add_column :filials, :photo, :string
  end
end

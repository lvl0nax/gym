class AddColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :shortdesc, :text
  end
end

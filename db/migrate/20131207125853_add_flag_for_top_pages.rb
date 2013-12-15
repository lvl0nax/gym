class AddFlagForTopPages < ActiveRecord::Migration
  def change
    add_column :pages, :top_page, :boolean
  end
end

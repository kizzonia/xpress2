class AddSlugToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :slug, :string
    add_index :menus, :slug
  end
end

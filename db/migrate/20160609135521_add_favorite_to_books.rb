class AddFavoriteToBooks < ActiveRecord::Migration
  def up
    add_column :books, :favorite, :bool, default: false
  end

  def down
    remove_column :books, :favorite, :bool, default: false
  end
end

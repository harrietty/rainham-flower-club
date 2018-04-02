class AddPathToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :filename, :string
    add_column :galleries, :cover_photo, :string
  end
end

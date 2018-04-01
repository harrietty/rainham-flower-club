class AddPathToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :path, :string
  end
end

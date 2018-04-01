class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.string :title
      t.timestamps
    end

    create_table :images do |t|
      t.belongs_to :gallery, index: true
      t.string :caption
      t.string :alt_text
      t.timestamps
    end
  end
end

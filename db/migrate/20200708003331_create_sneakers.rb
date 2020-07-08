class CreateSneakers < ActiveRecord::Migration[6.0]
  def change
    create_table :sneakers do |t|
      t.string :brand
      t.string :colorway
      t.string :gender
      t.string :releaseDate
      t.integer :retailPrice
      t.string :title
      t.integer :year
      t.string :imageUrl
      t.timestamps
    end
  end
end

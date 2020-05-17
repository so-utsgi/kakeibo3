class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :price
      t.integer :date
      t.text :category
      t.timestamps
    end
  end
end

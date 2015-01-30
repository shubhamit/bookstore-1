class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :author_name
      t.integer :price
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

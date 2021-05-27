class CreateBookshelves < ActiveRecord::Migration[6.0]
  def change
    create_table :bookshelves do |t|
      t.string :name
      t.integer :book_id
      t.integer :user_id

      t.timestamps
    end
  end
end

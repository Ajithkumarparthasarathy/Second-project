class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :book_id
      t.text :address

      t.timestamps
    end
  end
end

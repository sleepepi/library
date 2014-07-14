class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.string :name
      t.integer :book_id
      t.datetime :date_borrowed

      t.timestamps
    end
  end
end

class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :borrower
      t.boolean :available, default: true, null: false
      t.datetime :checkout_date

      t.timestamps

    end
  end
end

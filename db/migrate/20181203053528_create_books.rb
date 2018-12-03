class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.integer :price
      t.integer :status, default: 0, null: false
      t.date :started_at
      t.date :finished_at
      # t.references :category, foreign_key: true
      t.text :purpose
      t.integer :pages
      t.date :bought_at

      t.timestamps
    end
  end
end

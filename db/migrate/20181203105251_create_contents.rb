class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :title
      t.date :date
      t.references :book, foreign_key: true
      t.integer :pages
      t.text :Impressions
      t.integer :pomodoros
      t.string :keyword0
      t.string :keyword1
      t.string :keyword2

      t.timestamps
    end
  end
end

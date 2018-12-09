class CreatePostIts < ActiveRecord::Migration[5.2]
  def change
    create_table :post_its do |t|
      t.text :memo

      t.timestamps
    end
  end
end

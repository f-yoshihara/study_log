class ChangePostIts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :post_its, :memo, false
    change_table :post_its do |t|
      t.integer :status, default: 0, null: false
      t.integer :parent_id, index: true
      t.integer :lft, null: false, index: true
      t.integer :rgt, null: false, index: true
      t.integer :depth, null: false, default: 0
      t.integer :children_count, null: false, default: 0
    end
  end
end

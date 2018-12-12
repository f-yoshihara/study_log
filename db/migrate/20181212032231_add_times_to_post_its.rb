class AddTimesToPostIts < ActiveRecord::Migration[5.2]
  def change
    add_column :post_its, :in_progress_from, :datetime
    add_column :post_its, :done_at, :datetime
    add_column :post_its, :deleted_at, :datetime
  end
end

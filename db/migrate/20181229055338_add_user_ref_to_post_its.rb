class AddUserRefToPostIts < ActiveRecord::Migration[5.2]
  def change
    add_reference :post_its, :user, foreign_key: true
  end
end

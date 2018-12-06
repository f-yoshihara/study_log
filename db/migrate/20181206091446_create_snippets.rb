class CreateSnippets < ActiveRecord::Migration[5.2]
  def change
    create_table :snippets do |t|
      t.string :code
      t.string :category

      t.timestamps
    end
  end
end

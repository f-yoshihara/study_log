class ChangeNameOfImpresions < ActiveRecord::Migration[5.2]
  def change
    change_table :contents do |t|
      t.rename :Impressions, :impressions
    end
  end
end

rails g model snippet code:string category:string
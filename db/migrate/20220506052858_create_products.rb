class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :genre
      t.references :serise
      t.string :name
      t.integer :price
      t.string :image
      t.boolean :sales_status
      t.boolean :priority_flag
      
      t.timestamps
    end
  end
end

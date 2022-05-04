class CreateOrderproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :orderproducts do |t|
      t.references :order
      t.references :product
      t.integer :quantity

      t.timestamps
    end
  end
end

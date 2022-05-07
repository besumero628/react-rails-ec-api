class CreateOrderinfos < ActiveRecord::Migration[7.0]
  def change
    create_table :orderinfos do |t|
      t.references :user
      t.references :address
      t.string :to_name
      t.integer :price

      t.timestamps
    end
  end
end

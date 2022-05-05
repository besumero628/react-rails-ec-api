class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.references :user
      t.string :postal_code
      t.string :prefecture
      t.string :city
      t.string :address1
      t.string :address2
      t.boolean :priority_flag
      
      t.timestamps
    end
  end
end

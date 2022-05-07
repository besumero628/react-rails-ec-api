class CreateOrderinfos < ActiveRecord::Migration[7.0]
  def change
    create_table :orderinfos do |t|

      t.timestamps
    end
  end
end

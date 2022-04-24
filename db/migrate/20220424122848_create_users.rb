class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :family_name, null: false
      t.string :given_name, null: false
      t.string :family_name_kana, null: false
      t.string :given_name_kana, null: false
      t.string :email, null: false
      t.string :hashed_password
      t.boolean :suspended
      t.boolean :isAdmin      

      t.timestamps
    end
  end
end

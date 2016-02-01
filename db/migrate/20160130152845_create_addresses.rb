class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer  :admin_user_id
      t.string   :address_one
      t.string   :address_two

      t.timestamps null: false
    end
  end
end

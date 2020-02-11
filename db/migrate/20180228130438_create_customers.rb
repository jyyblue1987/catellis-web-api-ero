class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :phone_number
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
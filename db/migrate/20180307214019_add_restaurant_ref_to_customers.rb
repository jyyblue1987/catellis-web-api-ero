class AddRestaurantRefToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :restaurant, foreign_key: true, null: false
  end
end

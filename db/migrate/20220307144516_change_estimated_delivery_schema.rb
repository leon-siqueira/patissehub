class ChangeEstimatedDeliverySchema < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :delivery_date, :date
  end
end

class AddNameAvailabilityAddressAndReopenToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :address, :string, null: false, default: ""
    add_column :users, :available, :boolean, null: false, default: false
    add_column :users, :estimated_reopen, :datetime
  end
end

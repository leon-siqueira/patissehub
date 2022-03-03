class AddDescriptionToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :description, :text, null: false, default: ""
  end
end

class AddVisibleToProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :visible, :boolean, default: true
  end
end

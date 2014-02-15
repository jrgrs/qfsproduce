class ChangeQuantityToLineItems < ActiveRecord::Migration
  def change
  	change_column :line_items, :quantity, :decimal, default: 1.000, precision: 8, scale: 3
  end
end

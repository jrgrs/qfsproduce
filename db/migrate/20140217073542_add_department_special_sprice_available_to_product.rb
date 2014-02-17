class AddDepartmentSpecialSpriceAvailableToProduct < ActiveRecord::Migration
  def change
    add_column :products, :department, :text
    add_column :products, :special, :boolean
    add_column :products, :available, :boolean
    add_column :products, :sprice, :decimal, precision: 8, scale: 2
  end
end

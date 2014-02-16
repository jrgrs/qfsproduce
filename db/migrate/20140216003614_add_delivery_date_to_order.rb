class AddDeliveryDateToOrder < ActiveRecord::Migration
  def self.up 
  	add_column :orders, :scheduled_date, :datetime
  	add_column :orders, :scheduled_time, :time
  	add_column :orders, :delivery_date, :datetime
  end

  def self.down 
  	remove_column :orders, :scheduled_date
  	remove_column :orders, :scheduled_time
  	remove_column :orders, :delivery_date
  end
end

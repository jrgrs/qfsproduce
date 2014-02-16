class ChangeOrderColumn < ActiveRecord::Migration
  def change
  	change_column :orders, :scheduled_date, :text
  	change_column :orders, :scheduled_time, :text
  end
end

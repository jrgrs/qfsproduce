class ResetOrderColumnInformation < ActiveRecord::Migration
  def change
  	Order.reset_column_information
  end
end

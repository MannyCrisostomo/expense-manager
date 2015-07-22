class AddCurrentAmount < ActiveRecord::Migration
  def change
    add_column :users, :current_amount, :decimal
    change_column :transactions, :quantity, :decimal
  end
end

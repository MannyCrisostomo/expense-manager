class ChangeTypeName < ActiveRecord::Migration
  def change
    rename_column :transactions, :type, :trans_type
  end
end

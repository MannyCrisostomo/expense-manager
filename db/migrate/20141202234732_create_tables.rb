class CreateTables < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :caption
      t.integer :quantity
      t.integer :category_id
      t.integer :user_id
      t.string :attachment
      t.integer :type
      t.timestamps
    end
    
    create_table :category do |t|
      t.string :name
      t.integer :type_id
      t.integer :user_id
    end
    
    create_table :security_question do |t|
      t.string :question     
    end
    
    create_table :security_question_user do |t|
      t.string :answer
      t.integer :user_id
    end
    
  end
end

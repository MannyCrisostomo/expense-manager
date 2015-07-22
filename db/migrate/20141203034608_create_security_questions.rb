class CreateSecurityQuestions < ActiveRecord::Migration
  def change
    create_table :security_questions do |t|
      t.string :locale, null: false
      t.string :name, null: false
    end
    
    SecurityQuestion.create! locale: :en, name: "Name of your first pet?"
    SecurityQuestion.create! locale: :en, name: "Second last name of your mother?"
    SecurityQuestion.create! locale: :en, name: "Second last name of your father?"
    SecurityQuestion.create! locale: :en, name: "Watagata pitus berry?"

    add_column :users, :security_question_id, :integer
    add_column :users, :security_question_answer, :integer

    
  end
end

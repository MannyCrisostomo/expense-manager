class Category < ActiveRecord::Base
  belongs_to :user

  enum category_type: [ :income, :expense ]
end

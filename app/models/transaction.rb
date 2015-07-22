class Transaction < ActiveRecord::Base
  
  mount_uploader :attachment, AttachmentUploader

  after_save :update_user_amount
  after_destroy :update_user_amount

  before_save :validate_quantity

  
  enum trans_type: [ :income, :expense ]

  validates_presence_of :quantity

  belongs_to :user
  belongs_to :category

  def quantity
    read_attribute(:quantity).to_f.abs
  end

  def validate_quantity
    value = quantity.to_f.abs

    if self.trans_type.to_sym == :expense
      self.quantity = value * -1
      puts "dfdfdfdferer"
    else
      self.quantity = value
    end
  end

  def update_user_amount
    self.user.current_amount = Transaction.where(user_id: self.user.id).sum(:quantity)
    self.user.save
  end


end

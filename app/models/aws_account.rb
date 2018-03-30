class AwsAccount < ApplicationRecord
  #----------------------------------------------------------------------------
  # relation

  #----------------------------------------------------------------------------
  # enum
  exnum category: Settings.enum.aws_account.category.to_hash
  exnum status:   Settings.enum.aws_account.status.to_hash

  #----------------------------------------------------------------------------
  # delegate

  #----------------------------------------------------------------------------
  # validation

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :account_id,  presence: true
  validates :email, presence: true, 
    length: { minimum: 6, maximum: 64},
    format: { with: VALID_EMAIL_REGEX }
  validates :account_name, presence: true, length: { minimum: 1, maximum: 50}
  validates :display_name, presence: true
  validates :category, presence: true
  validates :payer_account_id, presence: true
  validates :user_id, presence: true
  validates :purpose, presence: true
  validates :status, presence: true

  #----------------------------------------------------------------------------
  # event

  #----------------------------------------------------------------------------
  # scope

  #----------------------------------------------------------------------------
  # method
end

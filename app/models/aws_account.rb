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
  validates :account_id,  presence: true
  validates :email, presence: true
  validates :account_name, presence: true
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

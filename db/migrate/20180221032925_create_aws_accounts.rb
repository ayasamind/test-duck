class CreateAwsAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_accounts do |t|
      t.text     :account_id
      t.text     :email
      t.text     :account_name
      t.text     :display_name
      t.integer  :category
      t.integer  :payer_account_id
      t.integer  :user_id
      t.text     :purpose
      t.datetime :deleted_at
      t.datetime :created_at,null: false
      t.datetime :updated_at,null: false
      t.integer  :status
    end
    add_index :aws_accounts, :account_id
    add_index :aws_accounts, :category
    add_index :aws_accounts, :payer_account_id
    add_index :aws_accounts, :user_id
  end
end

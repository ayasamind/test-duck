class CreateRefunds < ActiveRecord::Migration[5.1]
  def change
    create_table :refunds do |t|
      t.integer  :payer_account_id
      t.datetime :billing_at
      t.float    :refund
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

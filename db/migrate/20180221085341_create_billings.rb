class CreateBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :billings do |t|
      t.integer  :payer_account_id
      t.integer  :usage_account_id
      t.string   :product_code
      t.string   :usage_type
      t.string   :operation
      t.string   :line_item_type
      t.string   :pricing_unit
      t.float    :amount
      t.float    :blend_rate
      t.float    :blend_cost
      t.float    :unblend_rate
      t.float    :unblend_cost
      t.float    :ondemand_rate
      t.float    :ondemand_cost
      t.datetime :calculate_at
      t.datetime :billing_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.string   :pricing_term
      t.float    :billing_cost
      t.boolean  :owned, default: false
      t.float    :actual_cost
      t.integer  :exchange_rate_id
    end
    add_index :billings, :billing_at
    add_index :billings, :calculate_at
    add_index :billings, :line_item_type
    add_index :billings, :operation
    add_index :billings, :payer_account_id
    add_index :billings, :product_code
    add_index :billings, :usage_account_id
    add_index :billings, :usage_type
  end
end

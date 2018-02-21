class CreateAwsBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_billings do |t|
      t.text     :invoice_id
      t.text     :payer_account_id
      t.text     :linked_account_id
      t.text     :record_type
      t.text     :record_id
      t.datetime :billing_period_start_date
      t.datetime :billing_period_end_date
      t.datetime :invoice_date
      t.text     :payer_account_name
      t.text     :linked_account_name
      t.text     :taxation_address
      t.text     :payer_po_number
      t.text     :product_code
      t.text     :product_name
      t.text     :seller_of_record
      t.text     :usage_type
      t.text     :operation
      t.text     :rate_id
      t.text     :item_description
      t.datetime :usage_start_date
      t.datetime :usage_end_date
      t.float    :usage_quantity
      t.float    :blended_rate
      t.text     :currency_code
      t.float    :cost_before_tax
      t.float    :credits
      t.float    :tax_amount
      t.text     :tax_type
      t.float    :total_cost
      t.datetime :deleted_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

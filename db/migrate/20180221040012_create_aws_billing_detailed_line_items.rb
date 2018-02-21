class CreateAwsBillingDetailedLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_billing_detailed_line_items do |t|
      t.text     :invoice_id
      t.text     :payer_account_id
      t.text     :linked_account_id
      t.text     :record_type
      t.text     :product_name
      t.text     :rate_id
      t.text     :subscription_id
      t.text     :pricing_plan_id
      t.text     :usage_type
      t.text     :operation
      t.text     :availability_zone
      t.text     :reserved_instance
      t.text     :item_description
      t.datetime :usage_start_date
      t.datetime :usage_end_date
      t.float    :usage_quantity
      t.float    :blended_rate
      t.float    :blended_cost
      t.float    :un_blended_rate
      t.float    :un_blended_cost
      t.datetime :deleted_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
    add_index :aws_billing_detailed_line_items, :invoice_id
    add_index :aws_billing_detailed_line_items, :linked_account_id
    add_index :aws_billing_detailed_line_items, :payer_account_id
    add_index :aws_billing_detailed_line_items, :pricing_plan_id
    add_index :aws_billing_detailed_line_items, :rate_id
    add_index :aws_billing_detailed_line_items, :subscription_id
  end
end

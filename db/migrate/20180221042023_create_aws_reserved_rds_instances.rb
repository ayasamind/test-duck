class CreateAwsReservedRdsInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_reserved_rds_instances do |t|
      t.integer  :aws_account_id
      t.text     :reserved_db_instance_id
      t.text     :reserved_db_instances_offering_id
      t.text     :db_instance_class
      t.datetime :start_time
      t.integer  :duration
      t.float    :fixed_price
      t.float    :usage_price
      t.text     :currency_code
      t.integer  :db_instance_count
      t.text     :product_description
      t.text     :offering_type
      t.boolean  :multi_az
      t.text     :state
      t.float    :recurring_charge_amount
      t.text     :recurring_charge_frequency
      t.text     :reserved_db_instance_arn
      t.datetime :acquired_at
      t.text     :remarks
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.datetime :end_time
      t.string   :region
    end
    add_index :aws_reserved_rds_instances, :aws_account_id
  end
end

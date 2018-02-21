class CreateAwsReservedEc2Instances < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_reserved_ec2_instances do |t|
      t.integer  :aws_account_id
      t.text     :reserved_instances_id
      t.text     :instance_type
      t.text     :availability_zone
      t.datetime :start_time
      t.datetime :end_time
      t.integer  :duration
      t.float    :usage_price
      t.float    :fixed_price
      t.integer  :instance_count
      t.text     :product_description
      t.text     :state
      t.text     :instance_tenancy
      t.text     :currency_code
      t.text     :offering_type
      t.text     :recurring_charge_frequency
      t.float    :recurring_charge_amount
      t.text     :offering_class
      t.text     :scope
      t.datetime :acquired_at
      t.text     :remarks
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.string   :region
    end
    add_index :aws_reserved_ec2_instances, :aws_account_id
  end
end

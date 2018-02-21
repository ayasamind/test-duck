class CreateAwsPriceListEc2Products < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_price_list_ec2_products do |t|
      t.text     :sku
      t.text     :product_family
      t.text     :clock_speed
      t.text     :current_generation
      t.text     :dedicated_ebs_throughput
      t.text     :ebs_optimized
      t.text     :enhanced_networking_supported
      t.text     :from_location
      t.text     :from_location_type
      t.text     :gpu
      t.text     :group
      t.text     :group_description
      t.text     :instance_capacity_10_xlarge
      t.text     :instance_capacity_2_xlarge
      t.text     :instance_capacity_4_xlarge
      t.text     :instance_capacity_8_xlarge
      t.text     :instance_capacity_large
      t.text     :instance_capacity_medium
      t.text     :instance_capacity_xlarge
      t.text     :instance_family
      t.text     :instance_type
      t.text     :license_model
      t.text     :location
      t.text     :location_type
      t.text     :max_iops_burst_performance
      t.text     :max_iopsvolume
      t.text     :max_throughputvolume
      t.text     :max_volume_size
      t.text     :memory
      t.text     :network_performance
      t.text     :operating_system
      t.text     :operation
      t.text     :physical_cores
      t.text     :physical_processor
      t.text     :pre_installed_sw
      t.text     :processor_architecture
      t.text     :processor_features
      t.text     :provisioned
      t.text     :servicecode
      t.text     :sockets
      t.text     :storage
      t.text     :storage_media
      t.text     :tenancy
      t.text     :to_location
      t.text     :to_location_type
      t.text     :transfer_type
      t.text     :usagetype
      t.text     :vcpu
      t.string   :volume_type
      t.datetime :deleted_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
    add_index :aws_price_list_ec2_products, :group
    add_index :aws_price_list_ec2_products, :instance_family
    add_index :aws_price_list_ec2_products, :instance_type
    add_index :aws_price_list_ec2_products, :product_family
    add_index :aws_price_list_ec2_products, :sku
    add_index :aws_price_list_ec2_products, :usagetype
  end
end

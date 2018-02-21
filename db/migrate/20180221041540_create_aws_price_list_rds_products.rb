class CreateAwsPriceListRdsProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_price_list_rds_products do |t|
      t.text     :sku
      t.text     :product_family
      t.text     :clock_speed
      t.text     :current_generation
      t.text     :database_edition
      t.text     :database_engine
      t.text     :dedicated_ebs_throughput
      t.text     :deployment_option
      t.text     :engine_code
      t.text     :enhanced_networking_supported
      t.text     :from_location
      t.text     :from_location_type
      t.text     :group
      t.text     :group_description
      t.text     :instance_family
      t.text     :instance_type
      t.text     :license_model
      t.text     :location
      t.text     :location_type
      t.text     :max_volume_size
      t.text     :memory
      t.text     :min_volume_size
      t.text     :network_performance
      t.text     :operation
      t.text     :physical_processor
      t.text     :processor_architecture
      t.text     :processor_features
      t.text     :servicecode
      t.text     :storage
      t.text     :storage_media
      t.text     :to_location
      t.text     :to_location_type
      t.text     :transfer_type
      t.text     :usagetype
      t.text     :vcpu
      t.text     :volume_type
      t.datetime :deleted_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

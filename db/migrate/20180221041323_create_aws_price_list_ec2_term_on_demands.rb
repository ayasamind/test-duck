class CreateAwsPriceListEc2TermOnDemands < ActiveRecord::Migration[5.1]
  def change
    create_table :aws_price_list_ec2_term_on_demands do |t|
      t.text     :sku
      t.text     :offer_term_code
      t.datetime :effective_date
      t.text     :rate_code
      t.text     :description
      t.text     :begin_range
      t.text     :end_range
      t.text     :unit
      t.float    :price_per_unit
      t.datetime :deleted_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
    add_index :aws_price_list_ec2_term_on_demands, :begin_range
    add_index :aws_price_list_ec2_term_on_demands, :end_range
    add_index :aws_price_list_ec2_term_on_demands, :rate_code
    add_index :aws_price_list_ec2_term_on_demands, :sku
  end
end

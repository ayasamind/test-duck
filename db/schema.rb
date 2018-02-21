# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180221093108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aws_accounts", force: :cascade do |t|
    t.text "account_id"
    t.text "email"
    t.text "account_name"
    t.text "display_name"
    t.integer "category"
    t.integer "payer_account_id"
    t.integer "user_id"
    t.text "purpose"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.index ["account_id"], name: "index_aws_accounts_on_account_id"
    t.index ["category"], name: "index_aws_accounts_on_category"
    t.index ["payer_account_id"], name: "index_aws_accounts_on_payer_account_id"
    t.index ["user_id"], name: "index_aws_accounts_on_user_id"
  end

  create_table "aws_billing_detailed_line_items", force: :cascade do |t|
    t.text "invoice_id"
    t.text "payer_account_id"
    t.text "linked_account_id"
    t.text "record_type"
    t.text "product_name"
    t.text "rate_id"
    t.text "subscription_id"
    t.text "pricing_plan_id"
    t.text "usage_type"
    t.text "operation"
    t.text "availability_zone"
    t.text "reserved_instance"
    t.text "item_description"
    t.datetime "usage_start_date"
    t.datetime "usage_end_date"
    t.float "usage_quantity"
    t.float "blended_rate"
    t.float "blended_cost"
    t.float "un_blended_rate"
    t.float "un_blended_cost"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_aws_billing_detailed_line_items_on_invoice_id"
    t.index ["linked_account_id"], name: "index_aws_billing_detailed_line_items_on_linked_account_id"
    t.index ["payer_account_id"], name: "index_aws_billing_detailed_line_items_on_payer_account_id"
    t.index ["pricing_plan_id"], name: "index_aws_billing_detailed_line_items_on_pricing_plan_id"
    t.index ["rate_id"], name: "index_aws_billing_detailed_line_items_on_rate_id"
    t.index ["subscription_id"], name: "index_aws_billing_detailed_line_items_on_subscription_id"
  end

  create_table "aws_billings", force: :cascade do |t|
    t.text "invoice_id"
    t.text "payer_account_id"
    t.text "linked_account_id"
    t.text "record_type"
    t.text "record_id"
    t.datetime "billing_period_start_date"
    t.datetime "billing_period_end_date"
    t.datetime "invoice_date"
    t.text "payer_account_name"
    t.text "linked_account_name"
    t.text "taxation_address"
    t.text "payer_po_number"
    t.text "product_code"
    t.text "product_name"
    t.text "seller_of_record"
    t.text "usage_type"
    t.text "operation"
    t.text "rate_id"
    t.text "item_description"
    t.datetime "usage_start_date"
    t.datetime "usage_end_date"
    t.float "usage_quantity"
    t.float "blended_rate"
    t.text "currency_code"
    t.float "cost_before_tax"
    t.float "credits"
    t.float "tax_amount"
    t.text "tax_type"
    t.float "total_cost"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_price_list_ec2_products", force: :cascade do |t|
    t.text "sku"
    t.text "product_family"
    t.text "clock_speed"
    t.text "current_generation"
    t.text "dedicated_ebs_throughput"
    t.text "ebs_optimized"
    t.text "enhanced_networking_supported"
    t.text "from_location"
    t.text "from_location_type"
    t.text "gpu"
    t.text "group"
    t.text "group_description"
    t.text "instance_capacity_10_xlarge"
    t.text "instance_capacity_2_xlarge"
    t.text "instance_capacity_4_xlarge"
    t.text "instance_capacity_8_xlarge"
    t.text "instance_capacity_large"
    t.text "instance_capacity_medium"
    t.text "instance_capacity_xlarge"
    t.text "instance_family"
    t.text "instance_type"
    t.text "license_model"
    t.text "location"
    t.text "location_type"
    t.text "max_iops_burst_performance"
    t.text "max_iopsvolume"
    t.text "max_throughputvolume"
    t.text "max_volume_size"
    t.text "memory"
    t.text "network_performance"
    t.text "operating_system"
    t.text "operation"
    t.text "physical_cores"
    t.text "physical_processor"
    t.text "pre_installed_sw"
    t.text "processor_architecture"
    t.text "processor_features"
    t.text "provisioned"
    t.text "servicecode"
    t.text "sockets"
    t.text "storage"
    t.text "storage_media"
    t.text "tenancy"
    t.text "to_location"
    t.text "to_location_type"
    t.text "transfer_type"
    t.text "usagetype"
    t.text "vcpu"
    t.string "volume_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group"], name: "index_aws_price_list_ec2_products_on_group"
    t.index ["instance_family"], name: "index_aws_price_list_ec2_products_on_instance_family"
    t.index ["instance_type"], name: "index_aws_price_list_ec2_products_on_instance_type"
    t.index ["product_family"], name: "index_aws_price_list_ec2_products_on_product_family"
    t.index ["sku"], name: "index_aws_price_list_ec2_products_on_sku"
    t.index ["usagetype"], name: "index_aws_price_list_ec2_products_on_usagetype"
  end

  create_table "aws_price_list_ec2_term_on_demands", force: :cascade do |t|
    t.text "sku"
    t.text "offer_term_code"
    t.datetime "effective_date"
    t.text "rate_code"
    t.text "description"
    t.text "begin_range"
    t.text "end_range"
    t.text "unit"
    t.float "price_per_unit"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["begin_range"], name: "index_aws_price_list_ec2_term_on_demands_on_begin_range"
    t.index ["end_range"], name: "index_aws_price_list_ec2_term_on_demands_on_end_range"
    t.index ["rate_code"], name: "index_aws_price_list_ec2_term_on_demands_on_rate_code"
    t.index ["sku"], name: "index_aws_price_list_ec2_term_on_demands_on_sku"
  end

  create_table "aws_price_list_rds_products", force: :cascade do |t|
    t.text "sku"
    t.text "product_family"
    t.text "clock_speed"
    t.text "current_generation"
    t.text "database_edition"
    t.text "database_engine"
    t.text "dedicated_ebs_throughput"
    t.text "deployment_option"
    t.text "engine_code"
    t.text "enhanced_networking_supported"
    t.text "from_location"
    t.text "from_location_type"
    t.text "group"
    t.text "group_description"
    t.text "instance_family"
    t.text "instance_type"
    t.text "license_model"
    t.text "location"
    t.text "location_type"
    t.text "max_volume_size"
    t.text "memory"
    t.text "min_volume_size"
    t.text "network_performance"
    t.text "operation"
    t.text "physical_processor"
    t.text "processor_architecture"
    t.text "processor_features"
    t.text "servicecode"
    t.text "storage"
    t.text "storage_media"
    t.text "to_location"
    t.text "to_location_type"
    t.text "transfer_type"
    t.text "usagetype"
    t.text "vcpu"
    t.text "volume_type"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_price_list_rds_term_on_demands", force: :cascade do |t|
    t.text "sku"
    t.text "offer_term_code"
    t.datetime "effective_date"
    t.text "rate_code"
    t.text "description"
    t.text "unit"
    t.float "price_per_unit"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aws_reserved_ec2_instances", force: :cascade do |t|
    t.integer "aws_account_id"
    t.text "reserved_instances_id"
    t.text "instance_type"
    t.text "availability_zone"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "duration"
    t.float "usage_price"
    t.float "fixed_price"
    t.integer "instance_count"
    t.text "product_description"
    t.text "state"
    t.text "instance_tenancy"
    t.text "currency_code"
    t.text "offering_type"
    t.text "recurring_charge_frequency"
    t.float "recurring_charge_amount"
    t.text "offering_class"
    t.text "scope"
    t.datetime "acquired_at"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "region"
    t.index ["aws_account_id"], name: "index_aws_reserved_ec2_instances_on_aws_account_id"
  end

  create_table "aws_reserved_rds_instances", force: :cascade do |t|
    t.integer "aws_account_id"
    t.text "reserved_db_instance_id"
    t.text "reserved_db_instances_offering_id"
    t.text "db_instance_class"
    t.datetime "start_time"
    t.integer "duration"
    t.float "fixed_price"
    t.float "usage_price"
    t.text "currency_code"
    t.integer "db_instance_count"
    t.text "product_description"
    t.text "offering_type"
    t.boolean "multi_az"
    t.text "state"
    t.float "recurring_charge_amount"
    t.text "recurring_charge_frequency"
    t.text "reserved_db_instance_arn"
    t.datetime "acquired_at"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "end_time"
    t.string "region"
    t.index ["aws_account_id"], name: "index_aws_reserved_rds_instances_on_aws_account_id"
  end

  create_table "billings", force: :cascade do |t|
    t.integer "payer_account_id"
    t.integer "usage_account_id"
    t.string "product_code"
    t.string "usage_type"
    t.string "operation"
    t.string "line_item_type"
    t.string "pricing_unit"
    t.float "amount"
    t.float "blend_rate"
    t.float "blend_cost"
    t.float "unblend_rate"
    t.float "unblend_cost"
    t.float "ondemand_rate"
    t.float "ondemand_cost"
    t.datetime "calculate_at"
    t.datetime "billing_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pricing_term"
    t.float "billing_cost"
    t.boolean "owned", default: false
    t.float "actual_cost"
    t.integer "exchange_rate_id"
    t.index ["billing_at"], name: "index_billings_on_billing_at"
    t.index ["calculate_at"], name: "index_billings_on_calculate_at"
    t.index ["line_item_type"], name: "index_billings_on_line_item_type"
    t.index ["operation"], name: "index_billings_on_operation"
    t.index ["payer_account_id"], name: "index_billings_on_payer_account_id"
    t.index ["product_code"], name: "index_billings_on_product_code"
    t.index ["usage_account_id"], name: "index_billings_on_usage_account_id"
    t.index ["usage_type"], name: "index_billings_on_usage_type"
  end

  create_table "certificates", force: :cascade do |t|
    t.integer "certificate_type"
    t.integer "level"
    t.integer "user_id"
    t.datetime "get_certificate_at"
    t.datetime "end_certificate_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certificate_type"], name: "index_certificates_on_certificate_type"
    t.index ["level"], name: "index_certificates_on_level"
    t.index ["user_id"], name: "index_certificates_on_user_id"
  end

  create_table "cost_reports", force: :cascade do |t|
    t.string "identity_line_item_id", comment: "明細項目ID"
    t.string "identity_time_interval", comment: "明細項目適用期間"
    t.string "bill_invoice_id", comment: "請求レポートID"
    t.string "bill_billing_entity", comment: "アカウント販売者"
    t.string "bill_bill_type", comment: "請求書種別"
    t.string "bill_payer_account_id", comment: "支払アカウントID"
    t.string "bill_billing_period_start_date", comment: "請求期間の開始日(UTC)"
    t.string "bill_billing_period_end_date", comment: "請求期間の終了日(UTC)"
    t.string "line_item_usage_account_id", comment: "利用アカウントID"
    t.string "line_item_line_item_type", comment: "請求種別"
    t.string "line_item_usage_start_date", comment: "利用開始日"
    t.string "line_item_usage_end_date", comment: "利用終了日"
    t.string "line_item_product_code", comment: "サービス製品コード"
    t.string "line_item_usage_type", comment: "使用タイプ"
    t.string "line_item_operation", comment: "オペレーション"
    t.string "line_item_availability_zone", comment: "AZ"
    t.float "line_item_usage_amount", comment: "使用量"
    t.string "line_item_normalization_factor", comment: "ファミリータイプ内の規格係数"
    t.float "line_item_normalized_usage_amount", comment: "ファミリータイプ内の規格利用量"
    t.string "line_item_currency_code", comment: "通貨"
    t.float "line_item_unblended_rate", comment: "非ブレンドコスト"
    t.float "line_item_unblended_cost", comment: "非ブレンドレート"
    t.float "line_item_blended_rate", comment: "ブレンドコスト"
    t.float "line_item_blended_cost", comment: "ブレンドレート"
    t.string "line_item_line_item_description", comment: "料金説明"
    t.string "line_item_tax_type", comment: "税金種別"
    t.string "product_product_name", comment: "製品名"
    t.string "product_instance_type", comment: "インスタンスタイプ"
    t.string "product_sku", comment: "製品一意コード"
    t.string "pricing_lease_contract_length", comment: "リザーブドインスタンス年数"
    t.string "pricing_offering_class", comment: "リザーブド提供クラス"
    t.string "pricing_purchase_option", comment: "リザーブド支払方法"
    t.float "pricing_public_on_demand_cost", comment: "オンデマンド料金コスト"
    t.float "pricing_public_on_demand_rate", comment: "オンデマンド料金レート"
    t.string "pricing_term", comment: "オンデマンド/リザーブド"
    t.string "pricing_unit", comment: "単位"
    t.string "reservation_availability_zone", comment: "リザーブドAZ"
    t.string "reservation_normalized_units_per_reservation", comment: "リザーブド規格利用量"
    t.string "reservation_number_of_reservations", comment: "リザーブド予約数"
    t.string "reservation_reservation_arn", comment: "リザーブドARN"
    t.string "reservation_total_reserved_normalized_units", comment: "リザーブド規格量合計"
    t.string "reservation_total_reserved_units", comment: "リザーブド合計量"
    t.string "reservation_units_per_reservation", comment: "リザーブド利用量"
    t.index ["bill_payer_account_id"], name: "index_cost_reports_on_bill_payer_account_id"
    t.index ["line_item_blended_cost"], name: "index_cost_reports_on_line_item_blended_cost"
    t.index ["line_item_blended_rate"], name: "index_cost_reports_on_line_item_blended_rate"
    t.index ["line_item_currency_code"], name: "index_cost_reports_on_line_item_currency_code"
    t.index ["line_item_operation"], name: "index_cost_reports_on_line_item_operation"
    t.index ["line_item_product_code"], name: "index_cost_reports_on_line_item_product_code"
    t.index ["line_item_unblended_cost"], name: "index_cost_reports_on_line_item_unblended_cost"
    t.index ["line_item_unblended_rate"], name: "index_cost_reports_on_line_item_unblended_rate"
    t.index ["line_item_usage_account_id"], name: "index_cost_reports_on_line_item_usage_account_id"
    t.index ["line_item_usage_amount"], name: "index_cost_reports_on_line_item_usage_amount"
    t.index ["line_item_usage_type"], name: "index_cost_reports_on_line_item_usage_type"
    t.index ["pricing_lease_contract_length"], name: "index_cost_reports_on_pricing_lease_contract_length"
    t.index ["pricing_offering_class"], name: "index_cost_reports_on_pricing_offering_class"
    t.index ["pricing_public_on_demand_cost"], name: "index_cost_reports_on_pricing_public_on_demand_cost"
    t.index ["pricing_public_on_demand_rate"], name: "index_cost_reports_on_pricing_public_on_demand_rate"
    t.index ["pricing_purchase_option"], name: "index_cost_reports_on_pricing_purchase_option"
    t.index ["pricing_term"], name: "index_cost_reports_on_pricing_term"
    t.index ["pricing_unit"], name: "index_cost_reports_on_pricing_unit"
    t.index ["product_product_name"], name: "index_cost_reports_on_product_product_name"
    t.index ["product_sku"], name: "index_cost_reports_on_product_sku"
    t.index ["reservation_reservation_arn"], name: "index_cost_reports_on_reservation_reservation_arn"
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.float "rate"
    t.datetime "acquired_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "refunds", force: :cascade do |t|
    t.integer "payer_account_id"
    t.datetime "billing_at"
    t.float "refund"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login_id"
    t.string "name"
    t.string "email"
    t.integer "role"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["role"], name: "index_users_on_role"
  end

end

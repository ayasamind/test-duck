class CreateCostReports < ActiveRecord::Migration[5.1]
  def change
    create_table :cost_reports do |t|
      t.string :identity_line_item_id,                        comment: "明細項目ID"
      t.string :identity_time_interval,                       comment: "明細項目適用期間"
      t.string :bill_invoice_id,                              comment: "請求レポートID"
      t.string :bill_billing_entity,                          comment: "アカウント販売者"
      t.string :bill_bill_type,                               comment: "請求書種別"
      t.string :bill_payer_account_id,                        comment: "支払アカウントID"
      t.string :bill_billing_period_start_date,               comment: "請求期間の開始日(UTC)"
      t.string :bill_billing_period_end_date,                 comment: "請求期間の終了日(UTC)"
      t.string :line_item_usage_account_id,                   comment: "利用アカウントID"
      t.string :line_item_line_item_type,                     comment: "請求種別"
      t.string :line_item_usage_start_date,                   comment: "利用開始日"
      t.string :line_item_usage_end_date,                     comment: "利用終了日"
      t.string :line_item_product_code,                       comment: "サービス製品コード"
      t.string :line_item_usage_type,                         comment: "使用タイプ"
      t.string :line_item_operation,                          comment: "オペレーション"
      t.string :line_item_availability_zone,                  comment: "AZ"
      t.float  :line_item_usage_amount,                       comment: "使用量"
      t.string :line_item_normalization_factor,               comment: "ファミリータイプ内の規格係数"
      t.float  :line_item_normalized_usage_amount,            comment: "ファミリータイプ内の規格利用量"
      t.string :line_item_currency_code,                      comment: "通貨"
      t.float  :line_item_unblended_rate,                     comment: "非ブレンドコスト"
      t.float  :line_item_unblended_cost,                     comment: "非ブレンドレート"
      t.float  :line_item_blended_rate,                       comment: "ブレンドコスト"
      t.float  :line_item_blended_cost,                       comment: "ブレンドレート"
      t.string :line_item_line_item_description,              comment: "料金説明"
      t.string :line_item_tax_type,                           comment: "税金種別"
      t.string :product_product_name,                         comment: "製品名"
      t.string :product_instance_type,                        comment: "インスタンスタイプ"
      t.string :product_sku,                                  comment: "製品一意コード"
      t.string :pricing_lease_contract_length,                comment: "リザーブドインスタンス年数"
      t.string :pricing_offering_class,                       comment: "リザーブド提供クラス"
      t.string :pricing_purchase_option,                      comment: "リザーブド支払方法"
      t.float  :pricing_public_on_demand_cost,                comment: "オンデマンド料金コスト"
      t.float  :pricing_public_on_demand_rate,                comment: "オンデマンド料金レート"
      t.string :pricing_term,                                 comment: "オンデマンド/リザーブド"
      t.string :pricing_unit,                                 comment: "単位"
      t.string :reservation_availability_zone,                comment: "リザーブドAZ"
      t.string :reservation_normalized_units_per_reservation, comment: "リザーブド規格利用量"
      t.string :reservation_number_of_reservations,           comment: "リザーブド予約数"
      t.string :reservation_reservation_arn,                  comment: "リザーブドARN"
      t.string :reservation_total_reserved_normalized_units,  comment: "リザーブド規格量合計"
      t.string :reservation_total_reserved_units,             comment: "リザーブド合計量"
      t.string :reservation_units_per_reservation,            comment: "リザーブド利用量"
    end
    add_index :cost_reports, :bill_payer_account_id
    add_index :cost_reports, :line_item_blended_cost
    add_index :cost_reports, :line_item_blended_rate
    add_index :cost_reports, :line_item_currency_code
    add_index :cost_reports, :line_item_operation
    add_index :cost_reports, :line_item_product_code
    add_index :cost_reports, :line_item_unblended_cost
    add_index :cost_reports, :line_item_unblended_rate
    add_index :cost_reports, :line_item_usage_account_id
    add_index :cost_reports, :line_item_usage_amount
    add_index :cost_reports, :line_item_usage_type
    add_index :cost_reports, :pricing_lease_contract_length
    add_index :cost_reports, :pricing_offering_class
    add_index :cost_reports, :pricing_public_on_demand_cost
    add_index :cost_reports, :pricing_public_on_demand_rate
    add_index :cost_reports, :pricing_purchase_option
    add_index :cost_reports, :pricing_term
    add_index :cost_reports, :pricing_unit
    add_index :cost_reports, :product_product_name
    add_index :cost_reports, :product_sku
    add_index :cost_reports, :reservation_reservation_arn
  end
end

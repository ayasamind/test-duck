class CreateExchangeRates < ActiveRecord::Migration[5.1]
  def change
    create_table :exchange_rates do |t|
      t.float    :rate
      t.datetime :acquired_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end

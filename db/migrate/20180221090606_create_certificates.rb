class CreateCertificates < ActiveRecord::Migration[5.1]
  def change
    create_table :certificates do |t|
      t.integer  :certificate_type
      t.integer  :level
      t.integer  :user_id
      t.datetime :get_certificate_at
      t.datetime :end_certificate_at
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
    add_index :certificates, :certificate_type
    add_index :certificates, :level
    add_index :certificates, :user_id
  end
end

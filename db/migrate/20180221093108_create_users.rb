class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string   :login_id
      t.string   :name
      t.string   :email
      t.integer  :role
      t.string   :password_digest
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
    add_index :users, :email, unique: true
    add_index :users, :role
  end
end

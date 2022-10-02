class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :email, unique: true
      t.string :password
      t.string :wavclouds_oauth_token, unique: true

      t.timestamps
    end
  end
end

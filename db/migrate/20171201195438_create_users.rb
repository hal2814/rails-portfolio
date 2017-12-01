class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :password_salt
      t.string :email

      t.timestamps
    end
  end
end
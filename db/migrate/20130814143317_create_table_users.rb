class CreateTableUsers < ActiveRecord::Migration
  def change
    create_table :users do |user|
      user.string :username
      user.string :password_digest

      user.timestamps
    end
  end
end

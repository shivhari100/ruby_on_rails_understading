class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, index: true, null: false
      t.string :password, null: false
      t.timestamps null: false
    end
  end
end

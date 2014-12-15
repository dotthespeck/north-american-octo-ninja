class UserTable < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :name, null: false

      t.timestamp
    end
  end
end

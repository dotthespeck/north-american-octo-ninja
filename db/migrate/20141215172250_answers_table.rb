class AnswersTable < ActiveRecord::Migration
  def change

    create_table :answers do |t|
      t.integer :question_id, null: false
      t.integer :user_id, null: false
      t.string :answer, null:false

      t.timestamp
    end
  end
end

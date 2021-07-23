class CreateChosenAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :chosen_answers do |t|
      t.integer :survey_question_id
      t.integer :answer_option_id
      t.integer :user_id

      t.timestamps
    end
  end
end

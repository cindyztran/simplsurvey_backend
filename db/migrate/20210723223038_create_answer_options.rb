class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options do |t|
      t.text :answer_text
      t.integer :answer_numeric
      t.integer :survey_question_id

      t.timestamps
    end
  end
end

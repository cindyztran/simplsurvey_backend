class CreateSurveyQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :survey_questions do |t|
      t.text :survey_question_text
      t.string :categories
      t.integer :total_votes

      t.timestamps
    end
  end
end

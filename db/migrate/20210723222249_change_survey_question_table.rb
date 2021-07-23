class ChangeSurveyQuestionTable < ActiveRecord::Migration[6.1]
  def change
    change_column :survey_questions, :total_votes, :integer, :default => 0
  end
end

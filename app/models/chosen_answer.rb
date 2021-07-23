class ChosenAnswer < ApplicationRecord
    belongs_to :answer_option, foreign_key: "answer_option_id"
    belongs_to :survey_question, foreign_key: "survey_question_id"
    belongs_to :user, foreign_key: "user_id"
end
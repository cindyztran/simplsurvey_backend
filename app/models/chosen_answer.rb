class ChosenAnswer < ApplicationRecord
    belongs_to :answer_option
    belongs_to :survey_question
    belongs_to :user
end

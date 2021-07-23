class AnswerOption < ApplicationRecord
    belongs_to :survey_question
    has_many :chosen_answers
end
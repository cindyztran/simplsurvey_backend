class SurveyQuestion < ApplicationRecord
    has_many :answer_options
    has_many :chosen_answers
end

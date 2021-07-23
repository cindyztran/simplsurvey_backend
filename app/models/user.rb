class User < ApplicationRecord
    has_many :chosen_answers
    has_many :survey_questions
end

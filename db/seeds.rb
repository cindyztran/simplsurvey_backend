# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
    SurveyQuestion.create(
        survey_question_text: Faker::Lorem.question,
        categories: Faker::Hipster.word
    )
end

AnswerOption.create([
    {answer_text: Faker::Hipster.sentence, survey_question_id: 1
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 1
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 2
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 2
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 3
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 3
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 4
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 4
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 5
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 5
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 6
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 6
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 7
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 7
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 8
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 8
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 9
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 9
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 10
},
    {answer_text: Faker::Hipster.sentence, survey_question_id: 10
},
    
])

10.times do
    User.create(
        google_id: Faker::Hipster.word)
end


ChosenAnswer.create(survey_question_id: 1, answer_option_id: 1, user_id: 1)
ChosenAnswer.create(survey_question_id: 1, answer_option_id: 2, user_id: 5)
ChosenAnswer.create(survey_question_id: 3, answer_option_id: 1, user_id: 4)
ChosenAnswer.create(survey_question_id: 5, answer_option_id: 3, user_id: 4)
ChosenAnswer.create(survey_question_id: 2, answer_option_id: 2, user_id: 1)
ChosenAnswer.create(survey_question_id: 2, answer_option_id: 2, user_id: 2)
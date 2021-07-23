# SimplSurvey API
SimplSurvey is a simple application where users can choose survey questions to answer from six different categories. The application also allows for execution of a customized survey of your choosing.
### System dependencies
- Ruby 3.0.2
- Postgres 13.3
- Rails 6.1.4
### Database creation
`rails db:create`
### Database Initialization
`rails db:migrate`
## API endpoints
-----
### survey_question
* Create, Index
    * /survey_questions
* Show, Update, Destroy
    * /survey_questions/:id
### answer_options
* Create
    *  /survey_questions/:id/answer_options
### users
* Index, Create
    * /users 
* Show, Update, Destroy
    * /users/:google_id
### chosen_answers
* Create
    * /chosen_answers
## Getting Started
-----
- See deployed [API](https://simplsurvey-api.herokuapp.com) here.
- See deployed [app](https://simplsurvey-frontend.herokuapp.com) here.
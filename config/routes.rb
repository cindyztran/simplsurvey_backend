Rails.application.routes.draw do
  resources :users
  resources :chosen_answers
  resources :answer_options
  resources :survey_questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :chosen_answers
  resources :survey_questions do
    resources :answer_options, except: [:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

Rails.application.routes.draw do
  root 'welcome#index'
  resources :users do
    resources :chosen_answers
  end
  resources :survey_questions do
    resources :answer_options, except: [:show] do
      # resources :chosen_answers
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

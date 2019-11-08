Rails.application.routes.draw do
  root 'dates#index'
  get 'number' => 'operations#number'
  post 'number' => 'operations#operations'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

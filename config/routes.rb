Rails.application.routes.draw do
  root 'home#index'
  get 'number' => 'operations#number'
  post 'number' => 'operations#operations'
  get 'date' => 'dates#index'
  post 'date' => 'dates#validation'
  get 'salary' => 'salary#index'
  post 'salary' => 'salary#computation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'welcome#index'
  get 'number' => 'operations#number'
  post 'number' => 'operations#operations'
  get 'date' => 'dates#index'
  post 'date' => 'dates#validation'
  get 'payroll' => 'salary#index'
  post 'payroll' => 'salary#computation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

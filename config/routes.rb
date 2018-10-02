Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'pages/index'
    get 'pages/addrecipe'
    get 'pages/recipelookup'
    get 'pages/weeklyplanner'
    get 'pages/signup'
    get 'pages/login'

    root 'pages#index'
end

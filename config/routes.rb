Rails.application.routes.draw do
  root to: redirect('/admin')

  devise_for :users, ActiveAdmin::Devise.config

  mount_graphql_devise_for(
    'User',
    at: 'auth',

    operations: {
      sign_up: Mutations::SignUp
    }
  )

  post '/graphql', to: 'graphql#execute'

  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

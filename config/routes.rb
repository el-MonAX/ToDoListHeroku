Rails.application.routes.draw do

  get '/projects/:project_id', to: redirect('/projects')
  get '/projects/:project_id/edit', to: redirect('/projects')
  get '/projects/new', to: redirect('/projects')
  get '/projects/:project_id/tasks/new', to: redirect('/projects')
  get '/projects/:project_id/tasks/:id/edit', to: redirect('/projects')
  get '/projects/:project_id/tasks/:id', to: redirect('/projects')
  get '/projects/:project_id/tasks', to: redirect('/projects')

  devise_for :users
  resources :projects do
    resources :tasks do
      post 'sorting', on: :collection
    end
  end

  #authenticated :user do
  #  root to: "secret#index", as: :authenticated_root
  #end

  root 'projects#index'
end

Rails.application.routes.draw do
  devise_for :prestataires, path: 'pr'
  # get 'status/new'
  # get 'status/create'
  # get 'status/delete'
  # get 'status/update'
  # get 'status/edit'
  # get 'tasks_assignations/show'
  # get 'tasks_assignations/new'
  # get 'tasks_assignations/create'
  # get 'status_assignations/show'
  # get 'status_assignations/new'
  # get 'status_assignations/create'
  # get 'participations/show'
  # get 'participations/new'
  # get 'participations/create'
  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/new'
  # get 'tasks/create'
  # get 'tasks/edit'
  # get 'tasks/update'
  # get 'tasks/delete'
  # get 'documents/index'
  # get 'documents/show'
  # get 'documents/new'
  # get 'documents/create'
  # get 'documents/edit'
  # get 'documents/update'
  # get 'documents/delete'
  # get 'event/index'
  # get 'event/show'
  # get 'event/new'
  # get 'event/create'
  # get 'event/edit'
  # get 'event/update'
  # get 'event/delete'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/delete'
  devise_for :users
  root to: 'pages#home'

  resources :users

  devise_for :artistemanagers, path: 'am'



  get "participations/index_my_participation"
  resources :events do
    collection do
        get :index_manager
      end

    resources :participations, only: [:index, :new, :show, :create] do
      member do
        patch :accept
        patch :decline
      end
      end

    resources :documents, only: [:new, :create, :show, :index ]



end
  resources :status_assignations, only: [:create, :delete]
  resources :task_assignations, only: [:create, :delete]
  resources :status, only: [:index, :create, :delete, :update]
  resources :tasks
end

Askaway::Application.routes.draw do
  root to: 'questions#trending'

  devise_for :users, skip: :registrations, :path => '', :path_names => { :sign_in => "log_in", :sign_out => "log_out"}
  # Skipping registration and adding paths here in order to remove 'cancel' option
  as :user do
    get 'create_an_account' => 'devise/registrations#new', as: :new_user_registration
    post 'create_an_account' => 'devise/registrations#create', as: :user_registration
  end
  ActiveAdmin.routes(self)

  resources :users, only: :show do
    collection do
      get :edit
      patch :update
    end
  end

  resources :questions, path: 'q', only: [:show, :new, :create] do
    resources :comments, only: :create
    resources :votes, only: :create
    resources :answers, only: :create
  end

  resources :comments, only: :destroy
  resources :votes, only: :destroy

  get 'new_questions', to: 'questions#new_questions'
  get 'trending', to: 'questions#trending'

  resources :parties, only: :show, path: 'p' do
    member do
      get :new_reps
      post :invite_reps
      get :invited_reps
      get :walkthrough
    end
  end

  resources :invitations, only: :show
end

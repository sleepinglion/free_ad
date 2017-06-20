Rails.application.routes.draw do
  root 'home#index'
  mount Ckeditor::Engine => 'ckeditor'

  devise_for :admins, :controllers => { :sessions => "admins/sessions",:registrations => "admins/registrations" }, :path_names =>  {:sign_up=>'new',:sign_in => 'login', :sign_out => 'logout'} do
    get 'edit', :to => 'admins::Registrations#edit'
    get 'login', :to => 'admins::Sessions#new'
    get 'logout', :to=> 'admins::Sessions#destroy'
  end

  devise_for :users, :controllers => { :sessions => "users/sessions",:registrations => "users/registrations" }, :path_names =>  {:sign_up=>'new',:sign_in => 'login', :sign_out => 'logout'} do
    get '/users', :to => 'users/registrations#index'
    get '/login', :to => 'users/sessions#new'
    get '/signup', :to => 'users/registrations#new'
  end

  get '/login', :to =>  'users/sessions#new'

  resources :users
  resources :articles

  scope 'admin', module: 'admin', as: 'admin' do
    get '/' => 'admin_home#index'
    resources :users
    resources :articles
  end
end

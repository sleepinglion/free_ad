Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to => 'articles#index'
  mount Ckeditor::Engine => '/ckeditor'
  
  devise_for :users, :controllers => { :sessions => "users/sessions",:registrations => "users/registrations" }, :path_names =>  {:sign_up=>'new',:sign_in => 'login', :sign_out => 'logout'} do
    get 'new', :to => 'users::Registrationss#new'
    get 'edit', :to => 'users::Registrationss#edit'
    get 'login', :to => 'users::Sessions#new'
    get 'logout', :to=> 'users::Sessions#destroy'
  end
  
  get '/login', :to =>  'users/sessions#new'  
  
  resources :users  
  resources :articles
  
  # admin
  namespace :admin do
    get '/' => 'admin#index'
    
    resources :users     
    resources :articles
  end      
end

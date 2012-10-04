Enki::Application.routes.draw do
  namespace :admin do
    resource :session

    resources :posts, :pages do
      post 'preview', :on => :collection
    end
    resources :comments
    resources :undo_items do
      post 'undo', :on => :member
    end

    match 'health(/:action)' => 'health', :action => 'index', :as => :health

    root :to => 'dashboard#show'
  end

  scope :to => 'posts#index', :path => 'blog' do
    get 'posts.:format', :as => :formatted_posts
    get '(:tag)', :as => :posts
  end
  
  match 'code', :controller => :posts, :action => :index, :tag => 'code'
  match 'pages', :controller => :posts, :action => :index, :tag => 'pages'
  
  resources :archives, :only => [:index]
  resources :pages, :only => [:show], :path => ''
  resources :site, :only => [:index]

  constraints :year => /\d{4}/, :month => /\d{2}/, :day => /\d{2}/ do
    get ':year/:month/:day/:slug/comments'  => 'comments#index'
    post ':year/:month/:day/:slug/comments' => 'comments#create'
    get ':year/:month/:day/:slug/comments/new' => 'comments#new'
    get ':year/:month/:day/:slug' => 'posts#show'
  end
  
  root :to => 'site#index'
end

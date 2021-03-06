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
  resources :pages, :only => [:show]

  constraints :year => /\d{4}/, :month => /\d{2}/, :day => /\d{2}/ do
    get ':year/:month/:day/:slug/comments'  => 'comments#index'
    post ':year/:month/:day/:slug/comments' => 'comments#create'
    get ':year/:month/:day/:slug/comments/new' => 'comments#new'
    get ':year/:month/:day/:slug' => 'posts#show'
  end
  
  root :to => 'site#index'
  
  match 'company/about-us' => 'company#about_us'
  match 'company/presidents-message' => 'company#presidents_message'
  match 'company/mission-statement' => 'company#mission_statement'
  match 'company/global-supply' => 'company#global_supply'
  
  match 'products/gerotors' => 'products#gerotors'
  match 'products/vvt-components' => 'products#vvt_components'
  match 'products/valve-train-components' => 'products#valve_train_components'
  match 'products/power-steering-components' => 'products#power_steering_components'
  match 'products/sensor-rings' => 'products#sensor_rings'
  match 'products/sprockets-and-pulleys' => 'products#sprockets_and_pulleys'
  
  match 'responsibility/quality' => 'responsibility#quality'
  match 'responsibility/environment' => 'responsibility#environment'
  match 'responsibility/safety' => 'responsibility#safety'
  match 'responsibility/community' => 'responsibility#community'
  
  match 'careers' => 'site#careers'
  match 'contact' => 'site#contact'
end

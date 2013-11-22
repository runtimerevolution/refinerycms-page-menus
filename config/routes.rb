Refinery::Core::Engine.routes.draw do

  namespace :admin, :path => 'admin' do
    resources :page_menus, :only => [:edit, :update] do
      resources :page_positions, :only => :index do
        post :update_positions, :on => :collection
      end
    end
    
    get '/pages' => 'pages#list'
    get '/pages/main_menu' => 'pages#index', :as => "pages_main_menu"
    get '/pages/main_menu/edit' => 'page_menus#edit_main_menu', :as => "edit_main_menu"
    post '/pages/main_menu' => 'page_menus#update_main_menu', :as => "update_main_menu"
    
  end
end

ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => 'home', :action => 'index'
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.resources :abouts
  map.resources :band_photos
  map.resources :blog_posts
  map.resources :contact_informations
  map.resources :links
  map.resources :news_stories
  map.resources :press_stories
  map.resources :shows
  map.resources :songs
  map.resources :user_sessions
  map.resources :users

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

ActionController::Routing::Routes.draw do |map|
  
  map.root :controller => 'home', :action => 'index'
  
  map.register  "register", :controller => "users",                 :action => "new"
  map.login     "login",    :controller => "user_sessions",         :action => "new"
  map.logout    "logout",   :controller => "user_sessions",         :action => "destroy"
  
  map.about_us  "about_us", :controller => "abouts",                :action => "index"
  map.photos    "photos",   :controller => "band_photos",           :action => "index"
  map.blog      "blog",     :controller => "blog_posts",            :action => "index"
  map.contact   "contact",  :controller => "contact_informations",  :action => "index"
  map.music     "music",    :controller => "songs",                 :action => "index"
  map.news      "news",     :controller => "news_stories",          :action => "index"
  map.press     "press",    :controller => "press_stories",         :action => "index"
  
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

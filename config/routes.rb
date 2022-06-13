Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"



  # initial
  # root "pages#home"
  # get '/about', to: 'pages#about'
  # get '/contact', to: 'pages#contact'
  # get '/Movie/:id', to: 'pages#Movie'
  # get '/Moviedel/:id', to: 'pages#Moviedel'
  # post '/Postmovie', to: 'pages#Postmovie'
  # # put "/movie/:id", to: "movie#updateMovie" 
  # put '/Updatemovie/:id', to: 'pages#updatemovie'
  # get "/Movie/(:id)", to: "pages#index" 
  # get "movieTitle/(:title)", to: "pages#search"



  # blog
  # root "pages#home"
  # get '/Users/:id', to: 'pages#User'
  get '/home', to: 'pages#home'
  get '/homeU', to: 'pages#homeU'
  post '/pages', to: 'pages#postblogs'
  put '/adduser', to: 'pages#adduser'
  get '/pages/:id', to: 'pages#finduser'
  put '/pages/:id', to: 'pages#updateblog'
  delete '/pages/:id', to: 'pages#delblog'
  delete '/duser/:id', to: 'pages#deluser'
  get '/findblog/:id', to: 'pages#findblog'
  get '/getblog/:title', to: 'pages#search'
  get '/getuser/:name', to: 'pages#searchu'


  
end

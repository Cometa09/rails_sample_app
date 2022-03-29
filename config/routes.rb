Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'  
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/help'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end

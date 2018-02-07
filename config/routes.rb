Rails.application.routes.draw do
	root 'static#home'
  get '/home', to: 'static#home' 
  get '/lessons', to: 'static#lessons'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  get '/quiz', to: 'static#quiz'
  get '/confidence_kickstarter', to: 'static#confidence_kickstarter'
  get '/equine_first_aid_courses', to: 'static#equine_first_aid_courses'
  get '/success_stories', to: 'static#success_stories'
  get '/free_resources', to: 'static#free_resources'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

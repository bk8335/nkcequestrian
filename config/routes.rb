Rails.application.routes.draw do
	root 'static#home'
  get '/home', to: 'static#home' 
  get '/lessons', to: 'static#lessons'
  get '/about', to: 'static#about'
  get '/contact', to: 'static#contact'
  get '/quiz', to: 'static#quiz'
  get '/equine_first_aid_courses', to: 'static#equine_first_aid_courses'
  get '/success_stories', to: 'static#success_stories'
  get '/free_resources', to: 'static#free_resources'
  get '/faq', to: 'static#faq'
  get '/horse-anatomy', to: 'static#horse_anatomy'
  get '/practical-first-aid', to: 'static#practical_first_aid'
  get '/course-walks', to: 'static#course_walks'

  post '/newsletter-sign-up', to: 'static#newsletter_sign_up'
  post '/newsletter-sign-up', to: 'posts#newsletter_sign_up'
  post '/newsletter-sign-up', to: 'application#newsletter_sign_up'


  #blog
  get '/blog', to: 'posts#index'
  get '/blog/admin', to: 'posts#admin'
  resources :posts, path: 'blog'
  get 'drafts', to: 'posts#draft_index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

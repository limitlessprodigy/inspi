Rails.application.routes.draw do
  root 'posts#index'
  get 'profile' => 'sessions#profile'
  get 'sessions/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  devise_for :users
  resources :posts do
  	member do
	  	get "like", to: "posts#upvote"
	  	get "dislike", to: "posts#downvote"
 	 end
  	resources :comments
  end
end

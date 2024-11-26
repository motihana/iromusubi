Rails.application.routes.draw do
  get 'sindans' => 'sindans#index'
  get 'sindans/new' => "sindans#new"
  get 'one' => 'posts#one'
  get 'two' => 'posts#two'
  get 'three' => 'posts#three'
  get 'four' => 'posts#four'
  get 'five' => 'posts#five'
  get 'six' => 'posts#six'
  get 'seven' => 'posts#seven'
  get 'eight' => 'posts#eight'
  get 'nine' => 'posts#nine'
  get 'ten' => 'posts#ten'
  get 'eleven' => 'posts#eleven'
  get 'twelve' => 'posts#twelve'
  get 'thirteen' => 'posts#thirteen'
  get 'fourteen' => 'posts#fourteen'
  get 'fifteen' => 'posts#fifteen'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  resources :users, only: [:show] 

  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end



   root 'posts#top'
end

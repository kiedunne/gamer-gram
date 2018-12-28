Rails.application.routes.draw do
  get 'post/index'
  get 'post/new'
  get 'post/create'
  get 'post/show'
  get 'post/update'
  get 'post/destroy'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

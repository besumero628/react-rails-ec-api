Rails.application.routes.draw do
  namespace :v1 do
    resources :products, only: [:index, :create, :destory]
  end
end

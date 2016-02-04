Ecm::Youtube::Backend::Engine.routes.draw do
  resources :categories
  resources :videos do
    member do
      post :reposition
      post :toggle_published
    end
  end

  root to: 'home#index'
end

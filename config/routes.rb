Gallery::Application.routes.draw do
  resources :galleries

  root to: 'galleries#index'
end

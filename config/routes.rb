Rails.application.routes.draw do
  resources :years do
    resources :films 
  end
end

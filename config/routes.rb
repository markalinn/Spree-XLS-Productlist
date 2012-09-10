Rails.application.routes.draw do
  resources :products do
    collection do
      get :xls_output
    end
  end
end

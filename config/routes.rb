Rails.application.routes.draw do
  devise_for :users
	use_doorkeeper do
	  skip_controllers :authorizations, :applications, :authorized_applications
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end
end

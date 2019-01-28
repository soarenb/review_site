Rails.application.routes.draw do
  root 'homepages#index'
  # root 'reviews#index'
  devise_for :users

  resources :homepages do
      resources :profiles
  end



# namespace 'api' do
#   namespace 'v1' do
#     resources :reviews, only: [:new, :create, :index]
        # creates routes for the new, create and index actions of the API controller for react to fetch from
#   end
# end

end

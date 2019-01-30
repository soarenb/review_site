Rails.application.routes.draw do
  root 'artists#new'
  devise_for :users

  resources :artists do
    resources :reviews
  end

# may need this API call later
# namespace 'api' do
#   namespace 'v1' do
#     resources :reviews, only: [:new, :create, :index]
#         #creates routes for the new, create and index actions of the API controller for react to fetch from
#   end
# end

end

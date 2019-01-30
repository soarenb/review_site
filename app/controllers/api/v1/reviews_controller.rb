class Api::V1::ReviewsController < ApplicationController
    def index
        render json: Review.all #grabs all the reviews and the sends it to the API
        #fetched by componentDidMount before it can used be React
    end
end
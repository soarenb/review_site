class ReviewsController < ApplicationController

    def new
        @artist = Artist.find(params[:artist_id]) rescue nil
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @artist = Artist.find(params[:artist_id]) rescue nil
        @review.artist = @artist
    
        if @review.save
          flash[:notice] = "Review added successfully!"
          redirect_to artist_path(@artist)
        else
          flash[:error] = @review.errors.full_messages.join(", ")
          render :new
        end 
    end

    def show
      @review = Artist.find(params[:id])
      @reviews = @artist.reviews
    end

    private
    def review_params
      params.require(:review).permit(:rating, :title, :description)
    end
end

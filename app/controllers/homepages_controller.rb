class HomepagesController < ApplicationController

    def index
        # @reviews = Review.all
    end

    def new
        @user = Review.new
    end

    def create
        if @review.save
            redirect_to review_path(@review.id)
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
        @reviews = @user.reviews
    end
end

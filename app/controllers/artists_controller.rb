class ArtistsController < ApplicationController

    def new
        @artist = Artist.new()
    end

    def create
        @artist = Artist.new(artist_params)
    
        if @artist.save
            flash[:notice] = "Artist added successfully!"
            redirect_to @artist
        else
            flash[:error] = @artist.errors.full_messages.join(", ")
            render :new
        end 
    end

    def index
        @artists = Artist.all
    end
    
    def show
        @artist = Artist.find(params[:id])
        @reviews = @artist.reviews
    end

    private
    def artist_params
      params.require(:artist).permit(:name, :parlor_name)
    end
end
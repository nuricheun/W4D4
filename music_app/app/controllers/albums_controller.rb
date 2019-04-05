class AlbumsController < ApplicationController
    def new
        @band = Band.find(params[:band_id])
        render :new
    end


    def create
        @album = Albums.new(album_params)
        if @album.save!
            redirect_to albums_url    
        else
            render :new
        end
    end


    def index
        render :index
    end


    def show
        @album = Album.find(params[:id])
        render :show
    end


    def destroy
    end


    def album_params
        params.require(:album).permit(:title, :year, :band_id, :studio)
    end
end

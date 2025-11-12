class AlbumsController < ApplicationController
    def index
        @albums = Album.all
        render json: @albums
    end
    def show
        @album = Album.find(params[:id])
        render json: @album
    end
    def create
        @album = Album.new(album_params)
        if @album.save
            render json: @album, status: :created
        else
            render json: @album.errors, status: :unprocessable_entity
        end
    end
    def destroy
        @album = Album.find(params[:id])
        @album.destroy
        head :no_content
    end
    private
    def album_params
        params.require(:album).permit(:title, :artist_id)
    end
end

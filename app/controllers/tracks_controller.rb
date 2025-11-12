class TracksController < ApplicationController
    def index
        @tracks = Track.all
        render json: @tracks
    end
    def show
        @track = Track.find(params[:id])
        render json: @track
    end
    def create
        @track = Track.new(track_params)
        if @track.save
            render json: @track, status: :created
        else
            render json: @track.errors, status: :unprocessable_entity
        end
    end
    def destroy
        @track = Track.find(params[:id])
        @track.destroy
        head :no_content
    end
    private
    def track_params
        params.require(:track).permit(:title, :artist_id, :album_id, :duration)
    end
end

class ArtistsController < ApplicationController
before_filter = :index
 def index
   spotify_user = JSON.parse cookies[:spotify_current_user]
   if !params[:artist_name].empty?
    @artists = RSpotify::Artist.search(params[:artist_name])
   else
    redirect_to root_path
   end
 end
 def show
  @artist = RSpotify::Artist.find(params[:id])
 end
end

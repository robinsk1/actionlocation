class LocationsController < InheritedResources::Base

  def show
    @location = Location.find(params[:id])
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.title location.name
    end
    respond_with(@location)
  end

  #def new
    #@location = Location.new
    #@location.photos.build
  #end

  private
    def location_params
      params.require(:location).permit(:name, :description, :photo_attributes)
    end
end


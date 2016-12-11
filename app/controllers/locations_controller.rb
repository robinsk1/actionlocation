class LocationsController < InheritedResources::Base

  def new
    @location = Location.new
    @location.photos.build
  end

  private

    def location_params
      params.require(:location).permit(:name, :description, :photo_attributes)
    end
end


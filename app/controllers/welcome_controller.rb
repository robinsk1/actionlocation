class WelcomeController < ApplicationController
  def index
    @locations = Location.all.featured
    @contact = Contact.new
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.title location.name
    end
  end

  def create_mail
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:'alert-notice'] = 'Thank you for your message. We will contact you soon!'
      render :index
    else
      @locations = Location.all
      flash.now[:'alert-error'] = 'Cannot send message.'
      render :index
    end
  end

end

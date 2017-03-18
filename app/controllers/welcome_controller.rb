class WelcomeController < ApplicationController
  def index
    @locations = Location.all.featured
    @contact = Contact.new
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

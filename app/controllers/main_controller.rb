class MainController < ApplicationController
  def index
  end

  def contact
    @contacts = request.env['omnicontacts.contacts']
    respond_to do |format|
      format.html 
    end
  end
end

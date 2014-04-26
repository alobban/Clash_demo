class DemoController < ApplicationController
  def home
  end

  def results
  	@output = Listing.where(:town => params[:town])
  end
end

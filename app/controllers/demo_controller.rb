class DemoController < ApplicationController
  def home
  end

  def results
  	@properties = Listing.where(:town => params[:town].titleize)
  end

  def details
  	@property = Listing.find(params[:id])
  end
end

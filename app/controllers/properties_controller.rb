class PropertiesController < ApplicationController

  #layout false

  def index
    @properties = Listing.all
  end

  def show
    @property = Listing.find(params[:id])
  end

  def new
    @property = Listing.new
    @parish = county_parish
  end

  def create
    # Instantiate a new object using form parameters
    @property = Listing.new(property_params)
    # Save the object
    if @property.save
      # If save succeeds, redirect to the index action
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @property = Listing.find(params[:id])
    @parish = county_parish
  end

  def update
    # Find an existing object using form parameters
    @property = Listing.find(params[:id])
    # Update the object
    if @property.update_attributes(property_params)
      # If update succeeds, redirect to the index action
      redirect_to(:action => 'show', :id => @property.id)
    else
      # If update fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  def delete
    @property = Listing.find(params[:id])
  end

  def destroy
    property = Listing.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private

    def property_params
      # same as using "params[:property]", except that it:
      # - raises an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:property).permit(:landlord, :bedroom, :bathroom, 
        :rental_desc, :rate, :phone, :town, :parish_id)
    end

    def county_parish
      Parish.all
    end
end

class PlacesController < InheritedResources::Base
  respond_to :json
  actions :index, :show
  
  def index
    @places = Place.all
    
    respond_to do |format|
      format.json do
        render :json => @places.to_json(:include => :addresses)
      end
    end
  end
end

class EventsController < InheritedResources::Base
  respond_to :json
  actions :index, :show

  def index
    @events = Event.all
    
    respond_to do |format|
      format.json do
        render :json => @events.to_json(:include => :addresses)
      end
    end
  end
end

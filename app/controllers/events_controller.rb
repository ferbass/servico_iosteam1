class EventsController < InheritedResources::Base
  respond_to :json
  actions :index, :show
end

class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.administrator_id = current_user.id
    @event.save
  end

  def event_params
    params.require(:event).permit(:start_date, :duration, :description, :price, :location, :title)
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    

  end
end

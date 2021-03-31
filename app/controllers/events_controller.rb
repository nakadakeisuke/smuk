class EventsController < ApplicationController
  def index
    @events = Event.all
    root_path
  end

  def new
    @events = Event.all
    @event = Event.new
  end

  def create
    Event.create(event_parameter)
    redirect_to root_path
  end

  def show
    @events = Event.where(sales:1).group("start_time").count
  end

  private

  def event_parameter
    params.require(:event).permit(:client, :start_time, :sales)
  end

end

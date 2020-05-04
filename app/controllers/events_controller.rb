class EventsController < ApplicationController
    def index
      case params[:filter]
      when 'past'
        @events = Event.past
        @title = 'Past Events'
      else
        @events = Event.upcoming
        @title = 'Upcoming Events'
      end
    end
  
    def show
      @event = Event.find(params[:id])
      @registrations = @event.registrations
      @registration = current_user.registrations.find_by(event_id: @event.id) if current_user
    end
  
    def new
      if current_user
        @event = Event.new
      else
        redirect_to signin_path
      end
    end
  
    def create
      @event = Event.new(event_params)
      @event.creator = current_user
      if @event.save
        @event.registrations.create!(user: current_user)
        redirect_to root_path
      else
        render :new
      end
    end
  
    private
  
    def event_params
      params.require(:event).permit(:title, :description, :date)
    end
  
    def set_event
      @event = Event.find(params[:id])
    end
  end
  
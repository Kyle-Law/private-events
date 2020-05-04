class RegistrationsController < ApplicationController
  before_action :require_signin

  def create
    @event = Event.find(params[:event_id])
    @event.registrations.create!(user: current_user)
    # current_user.registrations.create(event_id: @event.id)

    redirect_to @event
  end

  def destroy
    registration = current_user.registrations.find(params[:id])
    registration.destroy

    event = Event.find(params[:event_id])
    redirect_to event
  end

  private

  def registration_params
    params.require(:registration).permit(:event_id)
  end
end

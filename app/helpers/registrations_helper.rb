module RegistrationsHelper
  def registration_button(event, registration)
    if registration
      button_to 'Unregister', event_registration_path(event, registration), method: :delete
    else
      button_to 'Register Now', event_registrations_path(event)
    end
  end
end

class SignIn
  include Capybara::DSL

  def sign_in(username)
    visit('/')

    click_on 'Sign Up'
    fill_in 'Username', with: username
    click_on 'Create Account'
  end

  def fill_in_event_form(params = {})
    fill_in('event_title', with: params.fetch(:title, 'Test Title'))
    fill_in('event_description', with: 'Here is a 10 words description about event')
    fill_in('event_date', with: '22/11/2050')
  end

  def create_event
    sign_in('test_user')

    click_on 'Add New Event'

    fill_in_event_form(
      title: 'Test Title'
    )

    click_on 'Create Event'
  end
end

# Private Events

> Rails association project from [the odin project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations)

In this project, I built a site similar to a private Eventbrite which allows users to create events and then manage user signups.

A user can create events. A user can attend many events. An event can be attended by many users. I modeled many-to-many relationships and also conscious of foreign keys and class names. Scopes are utilized to show upcoming/past events.

## Live Link
Click [here](https://kyle-private-events.herokuapp.com/) for the live link :)


## Project Snapshots
![image](https://user-images.githubusercontent.com/55923773/80931634-d051aa80-8ded-11ea-9a8c-7dac9641bae5.png)


## Built With
- Ruby
- Ruby on Rails
- RSpec
- Capybara
- Shoulda-matchers
- Bootstrap

## Project Structure

```
├── README.md
└── app
    └── models
        └── user.rb
        └── event.rb
        └── registration.rb
    └── views
        └── users
            └── _form.html.erb
            └── new.html.erb
            └── show.html.erb
        └── events
            └── index.html.erb
            └── new.html.erb
            └── show.html.erb
            └── _form.html.erb
        └── sessions
            └── new.html.erb
        └── shared
            └── _errors.html.erb
    └── controllers
        └── users_controller.rb
        └── sessions_controller.rb
        └── events_controller.rb

```
## Testing
1) Clone the project and cd to private-events
2) Run `yarn install --check-files` to check and update yarn packages
3) Run 'rspec'
4) 17 examples, 0 failures should be shown. 

## Deployment
1) Git clone this repo and cd the to the `private-events` directory.
2) Run `bundle install` in command line to install gems.
3) Run `rails db:reset` to migrate and seed database.
4) Run `rail s` and open browser with `http://localhost:3000/`.
5) You shall see the root page as the picture above.

### Main Features
1) Without Signing In, You can't see 'Add New Event' link.
2) Click `Sign up` for new user, or `Sign In` for returning user.
3) Once signing in, the user can create a new event or see his profile.
4) The user session will be deleted upon clicking `Sign Out`.
5) You can Register / Unregister events on the event#show page.
6) You can see attending/attended events in user profile.
7) You can see attendees in event#show page.
8) You can check for upcoming/past events. 

### User Sign up
1) Click `Sign up` and you'll be redirected to `./users/new`.
2) It requires input: username.
3) Username cannot be blank.
4) Press `Create User`
5) Viola! A new user is created and automatically signed in.

### Create New Event
1) After signing in, click `Add New Event` on the root page, you'll be redirected to `./events/new`.
2) Validations are as followed: title cannot be blank, description length > 20, date cannot be blank. Enter them and click 'Create Event'.
3) Viola! The post is shown at the root page.




## Authors

👤 **Kyle Law**

- Github: [@Kyle-Law](https://github.com/Kyle-Law)
- Twitter: [@Kyle-Law](https://twitter.com/ZhunKhing)
- Linkedin: [Kyle law](https://www.linkedin.com/in/kyle-lawzhunkhing/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Kyle-Law/web_scraper/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- The Odin Project

## 📝 License

This project is [MIT](LICENSE) licensed.

# Using Sessions

## Objectives

1. Creating an application using Ruby and Sinatra

### Using Sessions in Sinatra

Open up the controller file of this project, `application_controller.rb`. Check out the following lines of code: 

```ruby
configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "~~~~~~~~~~~"
  end
```

These lines are enabling our application to use the `sessions` keyword to access the session hash. We are also setting a session secret. 

### Instructions

Remember to `bundle install` before proceeding!

* Run `shotgun` to start up your app. 

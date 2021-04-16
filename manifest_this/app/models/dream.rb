class Dream < ActiveRecord::Base #Base class for all Sinatra applications and middleware.
    belongs_to :user
end

#Backend information - not directly working with the user, encapsulate the data specific to the application
# The 'logic' of a web application. This is where data is manipulated and/or saved.

#Models can also connect to databases to persist data. Think of models as the main logic behind your web application.

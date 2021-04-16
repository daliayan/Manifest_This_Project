class Dream < ActiveRecord::Base #Base class for all Sinatra applications and middleware.
    belongs_to :user
end

#Backend information - not directly working with the user, encapsulate the data specific to the application
class Dream < ActiveRecord::Base #Base class for all Sinatra applications and middleware.
    belongs_to :user
end
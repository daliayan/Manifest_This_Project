class User < Sinatra::Base #Base class for all Sinatra applications and middleware.
    has_many :dreams
end
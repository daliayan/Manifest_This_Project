#Once our Gem environment knows to put ActiveRecord into the picture, we need to tell ActiveRecord where the database is located that it will be working with.
#We do this by running ActiveRecord::Base

class Dream < ActiveRecord::Base
    belongs_to :user               
end

# ActiveRecord is responsible for representing model data and logic
 #Base class for all Sinatra applications and middleware.

#Backend information - not directly working with the user, encapsulate the data specific to the application
# The 'logic' of a web application. This is where data is manipulated and/or saved.

#Models can also connect to databases to persist data. Think of models as the main logic behind your web application.

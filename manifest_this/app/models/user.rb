#Once our Gem environment knows to put ActiveRecord into the picture, we need to tell ActiveRecord where the database is located that it will be working with.
#We do this by running ActiveRecord::Base

class User < ActiveRecord::Base  
    has_many :dreams                  #ActiveRecord Macros - macro gives me many method that writes code for me! (has_many)    
    has_secure_password         #ActiveRecord method used on my User class
    validates_uniqueness_of :username
    #provides reader and writer method for passwords
end

# ActiveRecord is responsible for representing !!!!model data and logic!!!!
#Base class for all Sinatra applications and middleware.

#Backend information - not directly working with the user, encapsulate the data specific to the application
# The 'logic' of a web application. This is where data is manipulated and/or saved.

#Models can also connect to databases to persist data. Think of models as the main logic behind your web application.

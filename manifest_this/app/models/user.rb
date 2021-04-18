#Once our Gem environment knows to put ActiveRecord into the picture, we need to tell ActiveRecord where the database is located that it will be working with.
#We do this by running ActiveRecord::Base

class User < ActiveRecord::Base  
    has_many :dreams                  
    has_secure_password         #This is from Active Record - created reader/writer method for password / provides authenticate method
end


#Once our Gem environment knows to put ActiveRecord into the picture, we need to tell ActiveRecord where the database is located that it will be working with.
#We do this by running ActiveRecord::Base

#Backend information - not directly working with the user, encapsulate the data specific to the application
# The 'logic' of a web application. This is where data is manipulated and/or saved.

#Models can also connect to databases to persist data. Think of models as the main logic behind your web application.

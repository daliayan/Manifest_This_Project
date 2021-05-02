#Once our Gem environment knows to put ActiveRecord into the picture, we need to tell ActiveRecord where the database is located that it will be working with.
#We do this by running ActiveRecord::Base

class User < ActiveRecord::Base  
    has_many :dreams 
    has_secure_password
    validates_uniqueness_of :username
end

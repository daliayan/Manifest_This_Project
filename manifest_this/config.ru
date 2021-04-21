# detail to Rack the environment requirements of the application and start the application.
# .ru - rack up

#! We use this file to load the Sinatra library, require the controller file, and then run the app.

require './config/environment'


use Rack::MethodOverride
# This uses a POST form to simulate a request with a non-supported method.
# In order to succeed, a hidden input field, with the name _method and the method name as the value, needs to be included.

use DreamController
use UserController
run ApplicationController

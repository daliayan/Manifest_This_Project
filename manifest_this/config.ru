# detail to Rack the environment requirements of the application and start the application.
# .ru - rack up

require './config/environment'


use Rack::MethodOverride
# This uses a POST form to simulate a request with a non-supported method.
# In order to succeed, a hidden input field, with the name _method and the method name as the value, needs to be included.


run ApplicationController

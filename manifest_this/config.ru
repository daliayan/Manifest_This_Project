require './config/environment'

use Rack::MethodOverride
use DreamController
use UserController
run ApplicationController

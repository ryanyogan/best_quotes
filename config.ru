
require './config/application'

app = BestQuotes::Application.new

use Rack::ContentType

app.route do
  match "", "quotes#index"
  match "sub-app",
    proc { [200, {}, ["Hello, sub-app!"]] }

  # default routes
  match ":controller/:id/:action"
  match ":controller/:id",
    :default => { "action" => "show" }
  match ":controller",
    :default => { "action" => "index" }
end

run app # Remember in the rackup file run is called automatically, this is similar to run BestQuotes::Application.new

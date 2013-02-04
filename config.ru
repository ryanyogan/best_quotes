# best_quotes/config.ru
require './config/application'

app = BestQuotes::Application.new

use Rack::ContentType

app.route do
  match "", "quotes#index"
  match "sub-app",
    proc { [200, {}, ["Samual L Jackson says Motha Fucker!"]] }

  # Defaults
  match ":controller/:id/:action"
  match ":controller/:id",
    default: { "action" => "show" }
  match ":controller",
    default: { "action" => "index" }
end

# Hmm Rack still wants us to call run, on what? 
# How about that variable app that is pointing to a new instance
# of the app :)
run app



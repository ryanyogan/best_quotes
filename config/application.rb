# best_quotes/config/application.rb
require "nails"

$LOAD_PATH << File.join(File.dirname(__FILE__),
                        "..", "app", "controllers")

module BestQuotes
  class Application < Nails::Application
  end
end

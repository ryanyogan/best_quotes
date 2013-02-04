# best_qoutes/app/controllers/quotes_controller.rb

class QuotesController < Rulers::Controller
  def a_quote
    "There is nothing either good or bad " +
      "but thinking makes it so."
  end

  def exception
    raise "The shit has officially hit the fan!"
  end
end

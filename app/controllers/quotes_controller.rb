# best_qoutes/app/controllers/quotes_controller.rb

class QuotesController < Rulers::Controller

  def index
    quotes = FileModel.all
    render :index, quotes: quotes
  end

  def new_quote
    attrs = {
      "submitter" => "Jack Frost",
      "quote" => "Suck my dick",
      "attribution" => "Ron Jeremy"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def a_quote
    render :a_quote, noun: :winking
  end

  def quote_1
    quote_1 = FileModel.find 1
    render :quote, obj: quote_1
  end


  def exception
    raise "The shit has officially hit the fan!"
  end
end

class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong>COULD NOT SAVE</strong>, the data you entered is either too long or too short.'
    end
    redirect_to root_path
  end

  def about
  end

  private #look this up#

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end    
end

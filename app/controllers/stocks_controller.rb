class StocksController < ApplicationController
  def search
    @stock = Stock.search_ticker(params[:Search])
    render 'users/my_portfolio'
  end
end

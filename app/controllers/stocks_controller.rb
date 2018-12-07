class StocksController < ApplicationController
  def search
    if params[:Search].empty?
      flash.now[:danger] = "Please enter the company ticker"
      render 'search'
    else 
      @stock = Stock.search_ticker(params[:Search])
        if @stock.nil?
          flash.now[:danger] = "Please enter a valid ticker"
          render 'search'
        else
          respond_to do |format|
            format.js
          end
        end
      end
   end
end

class UserStocksController < ApplicationController
    def create
        user = User.find(params[:name])
        stock = Stock.search_ticker(params[:stock])
        user_stock = UserStock.new(user: current_user, stock: stock)
        if user_stock.save
            flash[:success] = "Stock succesfully tracked"
            redirect_to my_portfolio_path
        else
            flash[:danger] = "Save failed"
            redirect_to my_portfolio_path
        end
    end

    def destroy
        
    end
end

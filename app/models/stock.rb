class Stock < ApplicationRecord
has_many :user_stocks
has_many :users, through: :user_stocks
    def self.search_ticker(ticker_name)
        get_ticker = StockQuote::Stock.quote(ticker_name)
        if get_ticker.nil?
            return get_ticker = nil
        else 
            new(name: get_ticker.company_name, ticker: get_ticker.symbol, last_price: get_ticker.latest_price)
        end
    end
end

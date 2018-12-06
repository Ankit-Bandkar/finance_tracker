class Stock < ApplicationRecord
    def self.search_ticker(ticker_name)
        get_ticker = StockQuote::Stock.quote(ticker_name)
        new(name: get_ticker.company_name, ticker: get_ticker.symbol, last_price: get_ticker.latest_price)
    end
end

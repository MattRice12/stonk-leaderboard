class TradesController < ApplicationController
    before_action :get_user
    before_action :parse_params
    
    # /buy 300 SDC@8
    def buy
        trade = Trade.new(
            quantity: @quantity,
            ticker: @ticker,
            price: @price,
            order_type: "buy",
            user_id: user.id
        )
        if trade.save
            render json: { message: "#{@user.username} bought #{trade.quantity} #{trade.ticker}@#{trade.price}"}
        else
            render json: { error: "FAILED", status: 422}
        end
    end

    # /sell 300 SDC@8
    def sell
        trade = Trade.new(
            quantity: @quantity,
            ticker: @ticker,
            price: @price,
            order_type: "sell",
            user_id: user.id
        )
        if trade.save
            render json: { message: "#{@user.username} sold #{trade.quantity} #{trade.ticker}@#{trade.price}"}
        else
            render json: { error: "FAILED", status: 422}
        end
    end

    private

    def parse_params
        puts params
        @quantity, remainder = params[:string].split(" ")
        @ticker, @price = remainder.split("@")
    end

    def get_user
        @user = User.find_by(telegram_id: params.fetch(:telegram_id))
    end
end

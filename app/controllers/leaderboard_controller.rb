class LeaderboardController < ApplicationController

    def leaderboard
        users = User.includes(:trades).all
        @leaderboard = users.map { |user| 
            {
                user: user.id,
                name: user.name,
                trades: user.trades 
            } 
        }
        
        render json: @leaderboard, status: 400
    end
end

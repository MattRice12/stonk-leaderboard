class UsersController < ApplicationController
    def register
        user = User.new(user_params)
        if user.save
            render json: { message: "User #{user.name} created!"}
        else
            render json: { error: "FAILED to create user" }
        end
    end

    private

    def user_params
        params.require(:user).permit(:telegram_id, :name)
    end
end

class UsersController < ApplicationController
    def register
        user = User.new(name: params[:name])
        if user.save
            render json: { message: "User #{user.name} created!"}
        else
            render json: { error: "FAILED to create user" }
        end
    end
end

class UsersController < ApplicationController

    def show
        user = User.find(params[:id])
        render json: user, include: :items, status: :ok 
        # need to establish associations before using 'include'

        # custom_response_hash = {
        #     user: user,
        #     items: user.items
        # }
        # render json: custom_response_hash

        
    end
end

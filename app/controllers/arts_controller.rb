class ArtsController < ApplicationController
    def create
        art = Art.new(art_params)
        if art.save
            render json: art, status: :created
        else
            render json: { errors: art.errors.full_message }, status: :unprocessable_entity
        end
    end

    def user_art
        user = User.find(params[:user_id])
        art = user.art
        render json: art
    end

    private

    def art_params
        params.require(:art).permit(:title, :artist, :description, :year, :user_id)
    end
end

class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all 
        render json: @favorites

    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite 

    end

    def create
        Favorite.create(
            title: params[:title]

        )


    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy

        redirect_to "http://localhost:3001"
    end


end

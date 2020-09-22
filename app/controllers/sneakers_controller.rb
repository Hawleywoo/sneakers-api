class SneakersController < ApplicationController
    def index
        if params[:brand] || params[:colorway] || params[:title] || params[:year] || params[:gender]
            @sneaker = Sneaker.where(brand: params[:brand], colorway: params[:colorway], year: params[:year], gender: params[:gender],title: params[:title])
            render json: @sneaker
        else
            @sneakers = Sneaker.all
            render json: @sneakers
        end
    end

    def show 
        @sneaker = Sneaker.where()

        render json: @sneaker
    end
end



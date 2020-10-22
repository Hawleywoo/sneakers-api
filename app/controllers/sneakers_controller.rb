class SneakersController < ApplicationController
    def index
        if params[:brand] && params[:title]
            @sneaker = Sneaker.where("brand LIKE ? AND title LIKE ?",   params[:brand], "%#{params[:title]}%")
            render json: @sneaker 
        elsif params[:brand]
            @sneaker = Sneaker.where("brand LIKE ?",   params[:brand])
            render json: @sneaker 
        elsif params[:title]
            @sneaker = Sneaker.where("title LIKE ?",  "%#{params[:title]}%")
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



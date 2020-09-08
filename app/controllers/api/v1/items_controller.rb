class Api::V1::ItemsController < ApplicationController

    def index
        user = User.find(params[:user_id])

        if user.id == session_user.id
            items = user.items
            render json: items
        else
            items = user.items.where(private: false)
            render json: items
        end
        
        
    end

    def create
        user = User.find(params[:user_id])

        params[:files].each do |item|
            newItem = Item.create!(user_id: user.id)
            newItem.image.attach(item)
        end

        items = user.items
        render json: items
    end

    def unlock

        items = params[:data].map do |item|
            item = Item.find_by(id: item)
            if item.private 
                item
            else
                render json: {errors: "Cannot unlock photos. Check selected images"}
            end
        end

        items.each do |item|
            # item.update(private: false)

        end
        
        user = User.find(params[:user_id])
        items = user.items
        byebug
        render json: items

    end

    def lock

    end

    def remove
        params[:data].each do |item|
            curItem = Item.find(item)
            curItem.image.purge
            curItem.destroy
        end
        
        render json: {}
    end

end

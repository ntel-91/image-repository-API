class Api::V1::ItemsController < ApplicationController

    def index
        byebug
        items = Item.all
        render json: items
    end

    def create
        # use params later
        user = User.first
        item = Item.create!(user_id: user.id)

        item.image.attach(params[:file])
        redirect_to action: 'index'
    end

    def destroy
        item = Item.find(params[:id])
        item.image.purge
        item.destroy

        render json: {} # or action: 'index'
    end

end

class MenuItemsController < ApplicationController
    def index
        @menuItems = MenuItem.all
        render json: @menuItems
    end

    def show
        @menuItem = MenuItem.find(params[:id])
        render json: @menuItem
    end

    def create
        @menuItem = MenuItem.create(
            menu_name: params[:menu_name],
            restaurant_name: params[:restaurant_name],
            menu_description: params[:menu_description]
        )
        render json: @menuItem
    end

    def update
        @menuItem = MenuItem.find(params[:id])
        @menuItem.update(
            menu_name: params[:menu_name],
            restaurant_name: params[:restaurant_name],
            menu_description: params[:menu_description]
        )
        render json: @menuItem
    end

    def destroy
        @menuItems = MenuItem.all
        @menuItem = MenuItem.find(params[:id])
        @menuItem.destroy
        render json: @menuItems
    end
end

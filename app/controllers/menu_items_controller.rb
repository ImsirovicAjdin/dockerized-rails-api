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
        if @menuItem.save
            render json: {message: "Entry created successfully"}, status: 200
        else
            render json: {message: "Entry creation failed!"}, status: 400
        end
    end

    def update
        @menuItem = MenuItem.find(params[:id])
        @menuItem.update(
            menu_name: params[:menu_name],
            restaurant_name: params[:restaurant_name],
            menu_description: params[:menu_description]
        )
        if @menuItem.save
            render json: {message: "Entry created successfully"}, status: 200
        else
            render json: {message: "Entry creation failed!"}, status: 400
        end
    end

    def destroy
        @menuItems = MenuItem.all
        @menuItem = MenuItem.find(params[:id])
        @menuItem.destroy
        render json: @menuItems
    end
end

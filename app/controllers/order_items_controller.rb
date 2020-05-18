class OrderItemsController < ApplicationController

    def show
        @order_items = current_order.order_items
    end

    def create
        @order = current_order
        @order_item = @order.order_items.new(order_params)
        @order.save
        session[:order_id] = @order.id
        format.js

    end

    def update
        @order = current_order
        @order_item = @order.order_items.find(params[:id])
        @order_item.update_attributes(order_params)
        @order_item = current_order.order_items
        # redirect_to cards_path
        
    end

    def destroy
        @order = current_order
        @order_item = @order.order_items.find(params[:id])
        @order_item.destroy
        @order_item = current_order.order_items
        
    end



    private
     
    def order_params
        params.require(:order_item).permit(:product_id , :quantity )
    end
end

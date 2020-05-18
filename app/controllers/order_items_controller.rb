class OrderItemsController < ApplicationController

    def create
        @order = current_order
        @order_item = @order.order_items.new(order_params)
        @order.save
        session[:order_id] = @order.id
        format.js

    end

    def update
        @order = current_order
        @order_item = @order.order_items.new(order_params)
        @order_item.update_attributes(order_params)
        @order_item = current_order.order_items
        # redirect_to cards_path
        
    end



    private
     
    def order_params
        params.require(:order_item).permit(:product_id , :quantity )
    end
end

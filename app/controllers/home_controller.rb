class HomeController < ApplicationController
  def index
  end

  def about_us
  end

  def menu
    if params[:section].present? then
      order_by = "name ASC"
      if params[:order_value].present? then
        order_by = "#{params[:order_key]} #{params[:order_value]}"
      end
      @menu_items = MenuItem.where(nil)
      @menu_items = @menu_items.section(params[:section]).order(order_by)
      @section = params[:section]
    else
      @menu_items = MenuItem.all
    end
  end

  def user_orders
    @menu_item = MenuItem.find(params[:menu_item])
    @order_item = UserOrder.new
    @order_item.item_name = @menu_item.name
    @order_item.price = @menu_item.price
    @order_item.order_id = Time.now.to_i
  end

def checkout
  @order_item = UserOrder.new(user_orders_params)
end

def user_orders_params
  params.require(:user_order).permit(:order_id, :price, :item_name, :user_name, :user_phone, :user_address)
end

end

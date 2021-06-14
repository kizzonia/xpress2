class OrdersController < InheritedResources::Base
  layout "accounts", except: [:index, :show]
  before_action :find_order, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_users, only: [:index]

  def index
    @orders = Order.all

    @search = params["search"]
  if @search.present?
    @tracking_number = @search["tracking_number"]
    @orders = Order.where(tracking_number: @tracking_number)
  end
end



  def show
  end
  def new
    @order = current_user.orders.build
  end
  def create
    @order = current_user.orders.build(order_params)
    @order.user_id = current_user.id
    if @order.save
      redirect_to root_path, notice: "Shipment Has Been Lodged Succesfully, We Will Proccess Your Order And Get Back To You Shortly "
    else
      render 'new', notice: "Please Try Again"
    end
  end

  def edit

  end

  def update
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  private


  def find_users
    if params[:id].nil?
      @user = current_user
    end
  end
  def find_order
    @order = Order.friendly.find(params[:id])
  end

    def order_params
      params.require(:order).permit(:first_name, :last_name, :address, :zipcode, :city, :state, :country, :user_id, :phone_number, :slug, :message, :status, :tracking_number)
    end

end

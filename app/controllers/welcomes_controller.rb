class WelcomesController < InheritedResources::Base
  before_action :find_welcomes, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @welcomes = Welcome.all
    @orders = Order.all
    @search = params["search"]
  if @search.present?
    @tracking_number = @search["tracking_number"]
    @orders = Order.where(tracking_number: @tracking_number)
  end
  end

  def show
  end

  private
  def find_welcomes
    @welcome = welcome.friendly.find(params[:id])
  end

    def welcome_params
      params.require(:welcome).permit(:logoimg, :title, :desc, :whatsapp, :ig, :ln, :section, :link, :footer, :phone, :address, :twitter, :telegram)
    end

end

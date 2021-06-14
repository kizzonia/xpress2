class MenusController < InheritedResources::Base
  before_action :find_menus, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_adminuser!, except: [:index, :show]
  def index
    @menus = Menu.all.order('created_at DESC')
  end

  def show
  end

  private
  def find_menus
    @menu = Menu.friendly.find(params[:id])
  end
    def menu_params
      params.require(:menu).permit(:title, :desc, :body)
    end

end

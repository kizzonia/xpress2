class AccountsController < InheritedResources::Base
  layout "accounts"
  before_action :find_account, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :find_users, only: [:index, ]

  def index
    @users = User.where(user_id: current_user)
    @orders = Order.where(user_id: current_user).order('created_at DESC')
    @accounts = Account.where(user_id: current_user).order('created_at DESC')
    @deposits = Deposit.where(user_id: current_user).order('created_at DESC')
  end
  def show
  end
  def new
    @account = current_user.accounts.build
  end
  def create
    @account = current_user.accounts.build(account_params)
    @account.user_id = current_user.id
    if @account.save
      redirect_to root_path, notice: "Welcome "
    else
      render 'new', notice: "Please Try Again"
    end
  end

  def edit

  end

  def update
    if @account.update(account_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private
def find_account
  @account = Account.find(params[:id])

end

  def find_users
    if params[:id].nil?
      @user = current_user
    end
  end
    def account_params
      params.require(:account).permit(:first_name, :last_name, :city, :address, :country, :zipcode, :balance, :email, :phone_number, :user_id)
    end

end

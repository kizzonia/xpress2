class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys:[:email, :password, :password_confirmation, :current_password, :first_name, :last_name, :country, :address, :city, :state
      ])
    end
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:email, :password, :password_confirmation, :current_password, :first_name, :last_name, :country, :address, :city, :state])
      end
      private
      def layout_by_resource
        if devise_controller? && resource_name == :user && action_name == 'new'
          "devise"
      elsif devise_controller? && resource_name == :user && action_name == 'edit'
        'accounts'
      else
        "application"
      end

    end
end

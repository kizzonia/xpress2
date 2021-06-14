ActiveAdmin.register Order do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :first_name, :last_name, :address, :zipcode, :city, :state, :country, :user_id, :phone_number, :slug, :message, :status, :tracking_number
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.inputs do
    f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
    f.input :first_name
    f.input :last_name
    f.input :tracking_number
    f.input :status
    f.input :message, :as => :ckeditor
  end
  f.actions
end
controller do
       def find_resource
         scoped_collection.friendly.find(params[:id])
       end
     end

end

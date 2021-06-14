ActiveAdmin.register Account do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :balance, :user_id, :account_id
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
f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}, #{u.first_name}", u.id]}
     f.input :balance
   end
     f.submit :submit
   end


end

ActiveAdmin.register Travel do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :order_id, :user_id, :arrivaltime, :departtime, :location, :status, :departdate


form do |f|

    f.inputs do
    f.input :user_id, :label => 'Users', :as => :select, :collection => User.all.map{|u| ["#{u.email}", u.id]}
    f.input :order_id, :label => 'orders/Travel Info', :as => :select, :collection => Order.all.map{|u| ["#{u.tracking_number}, #{u.first_name} ", u.id]}
    f.input :departdate
  panel 'History' do
    "The following can be used in the content below..."
  end
      f.input :departtime, placeholder: "Departure time from Last recored location", as: :datetime_picker
      f.input :arrivaltime, placeholder: "Expected arrival time",  as: :datetime_picker
      f.input :location, placeholder: "Travel Location"
      f.input :status, placeholder: "Current Travel Status"
    end
      f.submit :submit
    end
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
def display_name
  self.email
end
end

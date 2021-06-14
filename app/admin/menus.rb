ActiveAdmin.register Menu do
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
permit_params :title, :slug, :body
form do |f|
  f.inputs do
    f.input :title
    f.input :body, :as => :ckeditor
  end
  f.actions
end

controller do
       def find_resource
         scoped_collection.friendly.find(params[:id])
       end
     end


end

ActiveAdmin.register Project do
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

  puts "I'm being evaluated I think"
  
  action_item :restore_link, only: :show do
    link_to 'Restore account', restore_resource_admin_website_path(resource), method: :patch, 'data-confirm': 'Are you sure?'
  end

  member_action :restore_resource, method: :patch do
    redirect_to resource_path, notice: 'Account restored!'
  end
end

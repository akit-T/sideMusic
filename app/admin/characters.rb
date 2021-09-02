ActiveAdmin.register Character do
  active_admin_importable

  permit_params :name, :unit_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :unit_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :unit_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

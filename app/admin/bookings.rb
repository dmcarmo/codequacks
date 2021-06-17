ActiveAdmin.register Booking do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :start_date, :end_date, :duck_id, :user_id, :state
  #
  # or
  #
  # permit_params do
  #   permitted = [:start_date, :end_date, :duck_id, :user_id, :checkout_session_id, :state]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  menu priority: 3

  index do
    selectable_column
    column :user
    column :duck
    column :start_date
    column :end_date
    column :total_cost
    column :checkout_session_id
    column :state
    actions
  end
end

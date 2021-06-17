ActiveAdmin.register Duck do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :price, :photo
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :price, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  menu priority: 2

  index do
    selectable_column
    column :id
    column :name
    column :description
    column :price
    # image_column :photo_attachment, style: :thumb
    actions
  end

  form do |f|
    f.inputs "Duck Details" do
      f.input :name
      f.input :description
      f.input :price
      f.inputs do
        f.input :photo, as: :file
      end
    end
    f.button :Submit
  end
end

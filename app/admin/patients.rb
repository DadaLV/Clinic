ActiveAdmin.register Patient do
  permit_params :phone, :password, :password_confirmation, :role, :superadmin, :full_name

  index do
    selectable_column
    id_column
    column :full_name
    column :phone
    column :role
    column :created_at
    actions
  end

  filter :full_name
  filter :phone
  filter :created_at

  form do |f|
    f.inputs "Patient Details" do
      f.input :full_name
      f.input :phone
      f.input :password, required: false
      f.input :password_confirmation, required: false
    end
    f.actions
  end
end
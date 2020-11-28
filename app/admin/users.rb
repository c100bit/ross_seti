ActiveAdmin.register User do
  menu priority: 2
  permit_params  :email,
                 :password,
                 :password_confirmation,
                 :first_name,
                 :last_name,
                 :middle_name,
                 :position,
                 :department,
                 :company,
                 :education,
                 :birth_year,
                 :experience_years,
                 :role

  index do
    selectable_column
    column :email
    column :first_name
    column :last_name
    column :middle_name
    column :position
    column :department
    column :company
    column :education
    column :birth_year
    column :experience_years
    column :role
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :company
  filter :department
  filter :position

  show do
    attributes_table do
      row :email
      row :first_name
      row :last_name
      row :middle_name
      row :position
      row :department
      row :company
      row :education
      row :birth_year
      row :experience_years
      row :role
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation

      f.input :first_name
      f.input :last_name
      f.input :middle_name
      f.input :position
      f.input :department
      f.input :company
      f.input :education
      f.input :birth_year
      f.input :experience_years
      f.input :role
    end
    f.actions
  end
end

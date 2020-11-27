ActiveAdmin.register Company do
  menu priority: 5
  permit_params  :number,
                 :name

  index do
    selectable_column
    column :number
    column :name
    column :created_at
    column :updated_at
    actions
  end

  filter :number
  filter :name

  show do
    attributes_table do
      row :number
      row :name
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :number
      f.input :name
    end
    f.actions
  end
end

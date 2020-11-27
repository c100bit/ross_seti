ActiveAdmin.register Department do
  menu priority: 5
  permit_params  :name,
                 :company

  index do
    selectable_column
    column :id
    column :name
    column :company
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :company

  show do
    attributes_table do
      row :name
      row :company
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :company
    end
    f.actions
  end
end

ActiveAdmin.register Category do
  menu priority: 5
  permit_params  :title

  index do
    selectable_column
    column :id
    column :title
    column :created_at
    column :updated_at
    actions
  end

  filter :title

  show do
    attributes_table do
      row :title
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :title
    end
    f.actions
  end
end

ActiveAdmin.register Document do
  menu priority: 5
  permit_params :kind,
                :file, :proposal, :lists_count

  index do
    selectable_column
    column :id
    column :kind
    column :file do |obj|
      a obj.file.filename, href: url_for(obj.file)
    end
    column :proposal
    column :lists_count

    column :created_at
    column :updated_at
    actions
  end

  filter :kind
  filter :proposal

  show do
    attributes_table do
      row :kind
      row :file
      row :proposal
      row :lists_count

      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input  :kind
      f.input  :file
      f.input  :proposal
      f.input  :lists_count
    end
    f.actions
  end
end

ActiveAdmin.register ActiveAdmin::Comment do
  actions :index
  menu priority: 5

  index do
    selectable_column
    column :id
    column :author do |u|
      link_to("#{u.author.first_name} #{u.author.last_name}", admin_user_path(u.author))
    end
    column :body
    column :resource
    column :created_at
    actions
  end

  filter :name
  filter :company
end

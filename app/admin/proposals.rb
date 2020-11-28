ActiveAdmin.register Proposal do
  actions :index, :create, :edit, :update

  menu priority: 1
  # permit_params :status, active_admin_comment: []

  controller do
    def update(options = {}, &block)
      params[:proposal][:comments_attributes]['0']['namespace'] = 'admin'
      params[:proposal][:comments_attributes]['0']['author_id'] = current_user.id
      params[:proposal][:comments_attributes]['0']['author_type'] = 'User'
      # This is taken from the active_admin code
      super do |success, failure|
        block&.call(success, failure)
        failure.html { render :edit }
      end
    end

    def permitted_params
      params.permit!
    end
  end

  index do
    selectable_column
    column :number
    column :company
    column :users do |obj|
      obj.users.map { |u| link_to("#{u.first_name} #{u.last_name}", admin_user_path(u)) }.join('<br>').html_safe
    end
    column :title
    column :category
    column :problem_text
    column :solution_text
    column :positive_text
    column :necessary_costs do |obj|
      obj.necessary_costs.map { |c| "#{c.number}) #{c.cost_item} - #{c.sum}" }.join('<br>').html_safe
    end
    column :required_terms do |obj|
      obj.required_terms.map { |c| "#{c.number}) #{c.name} - #{c.days} дней" }.join('<br>').html_safe
    end
    column :user_rewards do |obj|
      obj.user_rewards.map { |c| "#{c.user.last_name} - #{c.count}%" }.join('<br>').html_safe
    end
    column :creates_savings
    column :documents do |obj|
      obj.documents.map { |c| a(c.file.filename, href: url_for(c.file)) }.join.html_safe
    end
    column :status
    column :created_at
    actions
  end

  filter :number
  filter :category
  filter :creates_savings
  filter :status

  show do
    attributes_table do
      row :number
      row :company
      row :users
      row :title
      row :category
      row :problem_text
      row :solution_text
      row :positive_text
      row :necessary_costs do |obj|
        obj.necessary_costs.map { |c| "#{c.number}) #{c.cost_item} - #{c.sum}" }.join('<br>').html_safe
      end
      row :required_terms do |obj|
        obj.required_terms.map { |c| "#{c.number}) #{c.name} - #{c.days} дней" }.join('<br>').html_safe
      end
      row :user_rewards do |obj|
        obj.user_rewards.map { |c| "#{c.user.last_name} - #{c.count}%" }.join('<br>').html_safe
      end
      row :creates_savings
      row :documents
      row :status do |p|
        best_in_place p, :status, as: :select, url: [:admin, p],
                                  collection: Proposal.statuses.map { |status| [status, status] }
      end
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    attributes_table_for proposal do
      row :number
      row :company
      row :number
      row :company
      row :users
      row :title
      row :category
      row :problem_text
      row :solution_text
      row :positive_text
      row :necessary_costs do |obj|
        obj.necessary_costs.map { |c| "#{c.number}) #{c.cost_item} - #{c.sum}" }.join('<br>').html_safe
      end
      row :required_terms do |obj|
        obj.required_terms.map { |c| "#{c.number}) #{c.name} - #{c.days} дней" }.join('<br>').html_safe
      end
      row :user_rewards do |obj|
        obj.user_rewards.map { |c| "#{c.user.last_name} - #{c.count}%" }.join('<br>').html_safe
      end
      row :creates_savings
      row :documents

      row :created_at
      row :updated_at
    end

    f.inputs do
      f.input :status, include_blank: false
      f.semantic_fields_for :comments, ActiveAdmin::Comment.new do |c|
        c.inputs class: '' do
          c.input :body, label: 'Комментарий', input_html: { rows: 4 }
        end
      end
    end
    panel 'Комментарии' do
      table_for proposal.comments do
        column :id
        column :body
        column :author do |u|
          link_to("#{u.author.first_name} #{u.author.last_name}", admin_user_path(u.author))
        end
        column :created_at
      end
    end
    f.actions
  end
end

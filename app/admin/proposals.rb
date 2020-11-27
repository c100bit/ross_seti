ActiveAdmin.register Proposal do
  menu priority: 5
  permit_params :number,
                :company,
                :user_ids,
                :title,
                :category,
                :problem_text,
                :solution_text,
                :positive_text,
                :necessary_cost_ids,
                :required_term_ids,
                :users_reward_ids,
                :creates_savings,
                :document_ids

  index do
    selectable_column
    column :number
    column :company
    column :users
    column :title
    column :category
    column :problem_text
    column :solution_text
    column :positive_text
    column :necessary_costs
    column :required_terms
    column :users_rewards
    column :creates_savings
    column :documents
    column :created_at
    actions
  end

  filter :number
  filter :category
  filter :creates_savings

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
      row :necessary_costs
      row :required_terms
      row :users_rewards
      row :creates_savings
      row :documents
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :number
      f.input  :company
      f.input  :users
      f.input  :title
      f.input  :category
      f.input  :problem_text
      f.input  :solution_text
      f.input  :positive_text
      f.input  :necessary_costs
      f.input  :required_terms
      f.input  :users_rewards
      f.input  :creates_savings
      f.input  :documents
    end
    f.actions
  end
end

class Proposal < ApplicationRecord
  belongs_to :company
  belongs_to :category

  has_and_belongs_to_many :users

  has_many :necessary_costs
  has_many :required_terms
  has_many :user_rewards
  has_many :documents
end

# == Schema Information
#
# Table name: proposals
#
#  id              :bigint           not null, primary key
#  creates_savings :boolean          default(FALSE)
#  number          :string
#  positive_text   :text
#  problem_text    :text
#  solution_text   :text
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  category_id     :bigint           not null
#  company_id      :bigint           not null
#
# Indexes
#
#  index_proposals_on_category_id  (category_id)
#  index_proposals_on_company_id   (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (company_id => companies.id)
#
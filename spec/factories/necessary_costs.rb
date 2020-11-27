FactoryBot.define do
  factory :necessary_cost do
    number { 1 }
    cost_item { "MyString" }
    sum { 1.5 }
    proposal { nil }
  end
end

# == Schema Information
#
# Table name: necessary_costs
#
#  id          :bigint           not null, primary key
#  cost_item   :string
#  number      :integer
#  sum         :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  proposal_id :bigint           not null
#
# Indexes
#
#  index_necessary_costs_on_proposal_id  (proposal_id)
#
# Foreign Keys
#
#  fk_rails_...  (proposal_id => proposals.id)
#

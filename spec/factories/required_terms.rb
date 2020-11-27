FactoryBot.define do
  factory :required_term do
    number { 1 }
    name { "MyString" }
    starts_date { "2020-11-28" }
    ends_date { "2020-11-28" }
    proposal { nil }
  end
end

# == Schema Information
#
# Table name: required_terms
#
#  id          :bigint           not null, primary key
#  days        :integer
#  name        :string
#  number      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  proposal_id :bigint           not null
#
# Indexes
#
#  index_required_terms_on_proposal_id  (proposal_id)
#
# Foreign Keys
#
#  fk_rails_...  (proposal_id => proposals.id)
#

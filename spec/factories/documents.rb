FactoryBot.define do
  factory :document do
    kind { "MyString" }
    lists_count { 1 }
  end
end

# == Schema Information
#
# Table name: documents
#
#  id          :bigint           not null, primary key
#  kind        :integer          default("description"), not null
#  lists_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  proposal_id :bigint           not null
#
# Indexes
#
#  index_documents_on_proposal_id  (proposal_id)
#
# Foreign Keys
#
#  fk_rails_...  (proposal_id => proposals.id)
#

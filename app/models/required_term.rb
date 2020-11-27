class RequiredTerm < ApplicationRecord
  belongs_to :proposal
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

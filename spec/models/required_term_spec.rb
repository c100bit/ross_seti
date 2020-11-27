require 'rails_helper'

RSpec.describe RequiredTerm, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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

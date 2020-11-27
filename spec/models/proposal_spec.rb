require 'rails_helper'

RSpec.describe Proposal, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
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

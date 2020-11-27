require 'rails_helper'

RSpec.describe UserReward, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: user_rewards
#
#  id          :bigint           not null, primary key
#  count       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  proposal_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_user_rewards_on_proposal_id  (proposal_id)
#  index_user_rewards_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (proposal_id => proposals.id)
#  fk_rails_...  (user_id => users.id)
#

module Mutations
  class LikeProposal < BaseMutation
    argument :proposal_id, ID, required: true
    argument :user_id, ID, required: true

    type Types::ProposalType

    def resolve(params)

      Proposal.find(params[:proposal_id]).increment!(:likes)
    end
  end
end

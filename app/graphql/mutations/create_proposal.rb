module Mutations
  class CreateProposal < BaseMutation
    argument :title, String, required: true
    argument :number, String, required: true
    argument :company_id, ID, required: true
    argument :category_id, ID, required: true
    argument :user_ids, [ID], required: true

    argument :problem_text, String, required: true
    argument :solution_text, String, required: true
    argument :positive_text, String, required: true
    argument :creates_savings, Boolean, required: true

    type Types::ProposalType

    def resolve(params)
      Proposal.create(params)
    end
  end
end

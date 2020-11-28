module Mutations
  class CreateDocument < BaseMutation
    argument :kind, String, required: true
    argument :proposal_id, ID, required: true
    argument :lists_count, Integer, required: true
    argument :file, String, required: false

    type Types::DocumentType

    def resolve(params)
      Document.create(params)
    end
  end
end

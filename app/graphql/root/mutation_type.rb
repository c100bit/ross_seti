# frozen_string_literal: true

module Root
  class MutationType < Types::Base::Object
    field :createProposal, mutation: Mutations::CreateProposal,
                           description: 'Создать предложение'
    field :createDocument, mutation: Mutations::CreateDocument,
                           description: 'Создать документ'
  end
end

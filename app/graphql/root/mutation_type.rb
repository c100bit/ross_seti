# frozen_string_literal: true

module Root
  class MutationType < Types::Base::Object
    field :createProposal, mutation: Mutations::CreateProposal,
                           description: 'Создать предложение'
    field :createDocument, mutation: Mutations::CreateDocument,
                           description: 'Создать документ'
    field :createTheme, mutation: Mutations::CreateTheme,
                        description: 'Создать тему для общения'
  end
end

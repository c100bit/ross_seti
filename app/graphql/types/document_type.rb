module Types
  class DocumentType < Base::Object
    field :id, ID, null: false

    field :kind, String, null: false
    field :file_url, String, null: false
    field :file_name, String, null: false
    field :proposals, [ProposalType], null: false
    field :kind, String, null: false
    field :lists_count, Integer, null: false
  end
end

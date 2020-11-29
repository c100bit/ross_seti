module Types
  class ProposalType < Base::Object
    field :id, ID, null: false

    field :title, String, null: false
    field :number, String, null: false
    field :company, CompanyType, null: false
    field :category, CategoryType, null: false
    field :users, [UserType], null: false
    field :documents, [DocumentType], null: false
    field :user_rewards, [UserRewardType], null: false
    field :necessary_costs, [NecessaryCostType], null: false
    field :required_terms, [RequiredTermType], null: false
    field :created_at, String, null: false
    field :likes, Integer, null: false
    field :problem_text, String, null: false
    field :solution_text, String, null: false
    field :positive_text, String, null: false
    field :creates_savings, Boolean, null: false
  end
end

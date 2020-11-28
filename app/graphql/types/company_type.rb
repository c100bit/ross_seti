module Types
  class CompanyType < Base::Object
    field :id, ID, null: false

    field :number, String, null: false
    field :name, String, null: false
  end
end

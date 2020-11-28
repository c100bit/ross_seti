module Types
  class RequiredTermType < Base::Object
    field :id, ID, null: false

    field :name, String, null: false
    field :days, Integer, null: false
    field :number, Integer, null: false
  end
end

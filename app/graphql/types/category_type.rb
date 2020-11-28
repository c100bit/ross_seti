module Types
  class CategoryType < Base::Object
    field :id, ID, null: false

    field :title, String, null: false
  end
end

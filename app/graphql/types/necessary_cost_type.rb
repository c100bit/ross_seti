module Types
  class NecessaryCostType < Base::Object
    field :id, ID, null: false

    field :cost_item, String, null: false
    field :number, Integer, null: false
    field :sum, Float, null: false
  end
end

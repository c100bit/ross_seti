# frozen_string_literal: true

module Types
  class DirectionType < Base::Object
    field :id, ID, null: false
    field :name, String, null: false
    field :themes, [ThemeType], null: false
  end
end

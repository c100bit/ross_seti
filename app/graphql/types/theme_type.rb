# frozen_string_literal: true

module Types
  class ThemeType < Base::Object
    field :id, ID, null: false
    field :title, String, null: false
    field :text, String, null: false
    field :user, UserType, null: false
    field :direction, DirectionType, null: false
  end
end

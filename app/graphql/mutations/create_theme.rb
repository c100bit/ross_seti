module Mutations
  class CreateTheme < BaseMutation
    argument :title, String, required: true
    argument :text, String, required: true
    argument :user_id, ID, required: true
    argument :direction_id, ID, required: true

    type Types::ThemeType

    def resolve(params)
      Theme.create(params)
    end
  end
end

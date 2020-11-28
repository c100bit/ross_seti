module Types
  class UserRewardType < Base::Object
    field :id, ID, null: false

    field :count, Integer, null: false
    field :user, UserType, null: false
  end
end

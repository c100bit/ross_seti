module Types
  class DepartmentType < Base::Object
    field :id, ID, null: false

    field :company, CompanyType, null: false
    field :name, String, null: false
  end
end

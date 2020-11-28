module Types
  class UserType < Base::Object
    field :id, ID, null: false

    field :email, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :middle_name, String, null: false
    field :position, String, null: false

    field :department, DepartmentType, null: false
    field :company, CompanyType, null: false

    field :education, String, null: false
    field :birth_year, Integer, null: false
    field :experience_years, Integer, null: false
    field :role, String, null: false
  end
end

module Seeds
  module Users
    def self.create!
      User.create!(email: 'admin@test.local',
                   password: 'password',
                   first_name: 'Иван',
                   last_name: 'Иванов',
                   middle_name: 'Иванович',
                   position: 'Админ',
                   department: Department.first,
                   education: 'СПБГУ',
                   birth_year: 1980,
                   experience_years: 1,
                   role: :admin)

      User.create!(email: 'worker1@test.local',
                   password: 'password',
                   first_name: 'Петр',
                   last_name: 'Петров',
                   middle_name: 'Петрович',
                   position: 'Менеджер',
                   department: Department.first,
                   education: 'СПБГУ',
                   birth_year: 1980,
                   experience_years: 1,
                   role: :worker)

      User.create!(email: 'worker2@test.local',
                   password: 'password',
                   first_name: 'Тимофей',
                   last_name: 'Тимофеев',
                   middle_name: 'Тимофеевич',
                   position: 'Бухгалтер',
                   department: Department.first,
                   education: 'СПБГУ',
                   birth_year: 1980,
                   experience_years: 1,
                   role: :worker)

      User.create!(email: 'moderator@test.local',
                   password: 'password',
                   first_name: 'Сидр',
                   last_name: 'Сидоров',
                   middle_name: 'Сидорович',
                   position: 'Модератор',
                   department: Department.first,
                   education: 'СПБГУ',
                   birth_year: 1980,
                   experience_years: 1,
                   role: :moderator)

      User.create!(email: 'expert@test.local',
                   password: 'password',
                   first_name: 'Андрей',
                   last_name: 'Андреев',
                   middle_name: 'Андреевич',
                   position: 'Эксперт',
                   department: Department.first,
                   education: 'СПБГУ',
                   birth_year: 1980,
                   experience_years: 1,
                   role: :expert)
    end
  end
end

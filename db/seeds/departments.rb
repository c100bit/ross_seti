module Seeds
  module Departments
    def self.create!
      Category.create!(title: 'Управление технологическим процессом. Цифровая сеть')
      Category.create!(title: 'Цифровое управление компанией')
      Category.create!(title: 'Дополнительные сервисы')
      Category.create!(title: 'Комплексная система информационной безопасности')
      Category.create!(title: 'не относится')

      c = Company.create!(name: 'ПАО «РОССЕТИ ВОЛГА»', number: 'к-1')
      c1 = Company.create!(name: 'ПАО «МРСК ЦЕНТРА»', number: 'к-2')

      Department.create!(company: c, name: 'ФИЛИАЛ ПАО "РОССЕТИ ВОЛГА»" - "ОРЕНБУРГЭНЕРГО"')
      Department.create!(company: c, name: 'ФИЛИАЛ ПАО "РОССЕТИ ВОЛГА»" - "МОРДОВЭНЕРГО"')
      Department.create!(company: c1, name: 'ФИЛИАЛ ПАО «МРСК ЦЕНТРА»" - "МРСКЭНЕРГО"')
    end
  end
end

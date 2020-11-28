module Seeds
  module Directions
    extend Base

    def self.create!
      Direction.create!(name: 'Эксплуатация подстанций (подстанционного оборудования)')
      Direction.create!(name: 'Эксплуатация магистральных сетей')
      Direction.create!(name: 'Эксплуатация распределительных сетей')

      Direction.create!(name: 'Капитальное строительство, реконструкция, проектирование')
      Direction.create!(name: 'Эксплуатация зданий, сооружений, специальной техники')
      Direction.create!(name: 'Оперативно-диспетчерское управление')
      Direction.create!(name: 'Релейная защита и противоаварийная автоматика')
      Direction.create!(name: 'Информационные технологии, системы связи')
      Direction.create!(name: 'Мониторинг и диагностика')

      Direction.create!(name: 'Контроль качества и учёт электроэнергии')
      Direction.create!(name: 'Производственная безопасность и охрана труда')
      Direction.create!(name: 'Технологическое присоединение')

      Direction.create!(name: 'Аварийно-восстановительные работы')
      Direction.create!(name: 'Экология, энергоэффективность, снижение потерь')
      Direction.create!(name: 'Совершенствование системы управления')
      Direction.create!(name: 'Дополнительные (нетарифные) услуги')
    end
  end
end

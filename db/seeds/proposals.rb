module Seeds
  module Proposals
    extend Base

    def self.create!
      p1 = Proposal.create!(number: '2020-10-001',
                            title: 'Рацпредложение 1',
                            positive_text: 'Позитивный эффект рацпредложения 1',
                            category: Category.first,
                            company: User.worker.first.company,
                            problem_text: 'Проблема рацпредложения 1',
                            solution_text: 'Решение рацпредложения 1',
                            creates_savings: true)
      p1.users = User.worker

      p2 = Proposal.create!(number: '2020-10-002',
                            title: 'Рацпредложение 2',
                            positive_text: 'Позитивный эффект рацпредложения 2',
                            category: Category.second,
                            company: User.worker.first.company,
                            problem_text: 'Проблема рацпредложения 2',
                            solution_text: 'Решение рацпредложения 2',
                            creates_savings: false)
      p2.users = User.worker
      RequiredTerm.create!(proposal: p1, days: 10, number: 1, name: 'Этап1')
      RequiredTerm.create!(proposal: p1, days: 10, number: 2, name: 'Этап2')
      RequiredTerm.create!(proposal: p2, days: 10, number: 1, name: 'Этап1')
      RequiredTerm.create!(proposal: p2, days: 10, number: 2, name: 'Этап2')

      NecessaryCost.create!(proposal: p1, sum: 10, number: 1, cost_item: 'Стоимость этапа 1')
      NecessaryCost.create!(proposal: p1, sum: 10, number: 2, cost_item: 'Стоимость этапа 2')
      NecessaryCost.create!(proposal: p2, sum: 10, number: 1, cost_item: 'Стоимость этапа 1')
      NecessaryCost.create!(proposal: p2, sum: 10, number: 2, cost_item: 'Стоимость этапа 2')

      UserReward.create!(user: User.worker.first, proposal: p1, count: 60)
      UserReward.create!(user: User.worker.last, proposal: p1, count: 40)
      UserReward.create!(user: User.worker.first, proposal: p2, count: 50)
      UserReward.create!(user: User.worker.last, proposal: p2, count: 50)

      Document.create!(proposal: p1, kind: :description, lists_count: 1, file: upload_seed_file('doc1.pdf'))
      Document.create!(proposal: p1, kind: :manual, lists_count: 1, file: upload_seed_file('doc1.pdf'))
      Document.create!(proposal: p1, kind: :efficiency_calculation, lists_count: 1, file: upload_seed_file('doc1.pdf'))

      Document.create!(proposal: p2, kind: :description, lists_count: 1, file: upload_seed_file('doc1.pdf'))
      Document.create!(proposal: p2, kind: :efficiency_calculation, lists_count: 1, file: upload_seed_file('doc1.pdf'))
    end
  end
end

namespace :support do
  desc 'Выгрузить текста в сервис проверки схожести предложений'
  task load_themes: :environment do
    themes = Proposal.all.map { |p| { id: p.id, title: p.title, text: p.problem_text } }
    puts TextServer.load_themes(themes).inspect
  end
end

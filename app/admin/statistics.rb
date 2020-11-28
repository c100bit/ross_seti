ActiveAdmin.register_page 'Статистика' do
  content do
    h3 "Количество предложений: #{Proposal.count}"

    Proposal.statuses.each do |s|
      h3 "Количество предложений в статусе #{Proposal.humanized_status(s[0])}: #{Proposal.send(s[0]).count}"
    end

    br
    h3 "Количество пользователей: #{User.count}"
    h3 "Количество филиалов: #{Department.count}"
    h3 "Количество компаний: #{Company.count}"
    h3 "Количество комментариев: #{ActiveAdmin::Comment.count}"
    h3 "Количество документов: #{Document.count}"
  end
end

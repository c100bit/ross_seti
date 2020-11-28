# frozen_string_literal: true

module Root
  class QueryType < Types::Base::Object
    field :users, [Types::UserType], null: false, description: 'Список пользователей'
    field :pages, [Types::PageType], null: false, description: 'Страницы'
    field :categories, [Types::CategoryType], null: false, description: 'Список категорий'
    field :proposals, [Types::ProposalType], null: false, description: 'Список предложений'
    field :documents, [Types::DocumentType], null: false, description: 'Список документов'
    field :companies, [Types::CompanyType], null: false, description: 'Список компаний'
    field :departments, [Types::DepartmentType], null: false, description: 'Список филиалов'

    field :user, Types::UserType, null: false, description: 'Пользователь' do
      argument :id, ID, required: true
    end

    field :page, Types::PageType, null: false, description: 'Страница' do
      argument :id, ID, required: true
    end

    field :category, Types::CategoryType, null: false, description: 'Категория' do
      argument :id, ID, required: true
    end

    field :proposal, Types::ProposalType, null: false, description: 'Предложение' do
      argument :id, ID, required: true
    end

    field :document, Types::DocumentType, null: false, description: 'Документ' do
      argument :id, ID, required: true
    end

    field :company, Types::CompanyType, null: false, description: 'Компания' do
      argument :id, ID, required: true
    end

    field :department, Types::DepartmentType, null: false, description: 'Филиал' do
      argument :id, ID, required: true
    end

    field :current_user, Types::UserType, null: false, description: 'Текущий пользователь'

    def current_user
      context[:current_user]
    end

    def users
      User.all
    end

    def pages
      Page.all
    end

    def categories
      Category.all
    end

    def proposals
      Proposal.all
    end

    def documents
      Document.all
    end

    def companies
      Company.all
    end

    def departments
      Department.all
    end

    def user(id:)
      User.find(id)
    end

    def page(id:)
      Page.find(id)
    end

    def category(id:)
      Category.find(id)
    end

    def proposal(id:)
      Proposal.find(id)
    end

    def document(id:)
      Document.find(id)
    end

    def company(id:)
      Company.find(id)
    end

    def department(id:)
      Department.find(id)
    end
  end
end

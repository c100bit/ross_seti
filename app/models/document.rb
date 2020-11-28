class Document < ApplicationRecord
  belongs_to :proposal
  has_one_attached :file

  enum kind: %i[description manual distribution efficiency_calculation other]

  def file_url
    url_for(file)
  end

  def file_name
    file.filename
  end
end

# == Schema Information
#
# Table name: documents
#
#  id          :bigint           not null, primary key
#  kind        :integer          default("description"), not null
#  lists_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  proposal_id :bigint           not null
#
# Indexes
#
#  index_documents_on_proposal_id  (proposal_id)
#
# Foreign Keys
#
#  fk_rails_...  (proposal_id => proposals.id)
#

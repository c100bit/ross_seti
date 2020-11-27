class CreateJoinTableProposalsUsers < ActiveRecord::Migration[6.0]
  def change
    create_join_table :proposals, :users do |t|
      # t.index [:proposal_id, :user_id]
      # t.index [:user_id, :proposal_id]
    end
  end
end

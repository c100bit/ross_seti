class AddLikesToProposal < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :likes, :integer, default: 0, null: false
  end
end

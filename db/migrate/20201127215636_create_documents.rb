class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.integer :kind, default: 0, null: false
      t.integer :lists_count
      t.references :proposal, null: false, foreign_key: true
      t.timestamps
    end
  end
end

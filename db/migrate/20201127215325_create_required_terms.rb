class CreateRequiredTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :required_terms do |t|
      t.integer :number
      t.string :name
      t.integer :days
      t.references :proposal, null: false, foreign_key: true

      t.timestamps
    end
  end
end

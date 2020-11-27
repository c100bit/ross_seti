class CreateProposals < ActiveRecord::Migration[6.0]
  def change
    create_table :proposals do |t|
      t.string :number
      t.references :company, null: false, foreign_key: true
      t.string :title
      t.references :category, null: false, foreign_key: true
      t.text :problem_text
      t.text :solution_text
      t.text :positive_text
      t.boolean :creates_savings, default: false

      t.timestamps
    end
  end
end

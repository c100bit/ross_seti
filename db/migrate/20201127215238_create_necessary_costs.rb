class CreateNecessaryCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :necessary_costs do |t|
      t.integer :number
      t.string :cost_item
      t.float :sum
      t.references :proposal, null: false, foreign_key: true

      t.timestamps
    end
  end
end

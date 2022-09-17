class CreateChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :choices do |t|
      t.string :name
      t.references :question, null: false, foreign_key: true
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end

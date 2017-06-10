class CreateStrikes < ActiveRecord::Migration[5.0]
  def change
    create_table :strikes do |t|
      t.string :description_strike
      t.date :date_strike
      t.references :alumn, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end

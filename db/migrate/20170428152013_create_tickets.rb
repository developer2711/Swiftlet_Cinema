class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :tickID
      t.string :tickRound
      t.string :tickMov
      t.string :tickDate
      t.string :tickSeat
      t.string :tickPrice
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end

class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :movID
      t.string :movName
      t.string :movRound
      t.string :movTime
      t.string :movDura

      t.timestamps
    end
  end
end

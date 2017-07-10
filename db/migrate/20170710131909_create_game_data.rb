class CreateGameData < ActiveRecord::Migration[5.1]
  def change
    create_table :game_data do |t|
      t.float :hours
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

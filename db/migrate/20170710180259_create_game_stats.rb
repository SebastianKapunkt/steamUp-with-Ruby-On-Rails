class CreateGameStats < ActiveRecord::Migration[5.1]
  def change
    create_table :game_stats do |t|
      t.float :hours

      t.references :game, foreign_key: {to_table: :games}
      t.references :user, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end

class AddListIdColumnToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :game_description, :string
  end
end

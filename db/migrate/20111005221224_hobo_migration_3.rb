class HoboMigration3 < ActiveRecord::Migration
  def self.up
    remove_column :nfl_games, :user_id

    remove_index :nfl_games, :name => :index_nfl_games_on_user_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :nfl_games, :user_id, :integer

    add_index :nfl_games, [:user_id]
  end
end

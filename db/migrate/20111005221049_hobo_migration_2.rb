class HoboMigration2 < ActiveRecord::Migration
  def self.up
    add_column :nfl_games, :user_id, :integer

    add_index :nfl_games, [:user_id]
  end

  def self.down
    remove_column :nfl_games, :user_id

    remove_index :nfl_games, :name => :index_nfl_games_on_user_id rescue ActiveRecord::StatementInvalid
  end
end

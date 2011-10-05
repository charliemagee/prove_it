class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :nfl_games do |t|
      t.string   :name
      t.string   :away
      t.string   :home
      t.string   :winner
      t.date     :gameday
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :nfl_games
  end
end

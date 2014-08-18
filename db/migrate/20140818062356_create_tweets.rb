class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.integer :user_id, :null => false
      t.string :message, :null => false
      t.datetime :created_at, :null => false
    end
  end

  def self.down
    drop_table :tweets
  end
end

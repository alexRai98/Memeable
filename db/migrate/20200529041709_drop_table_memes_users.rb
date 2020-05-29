class DropTableMemesUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :memes_users
  end
end

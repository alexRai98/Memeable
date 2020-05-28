class CreateJoinTableMemeTag < ActiveRecord::Migration[6.0]
  def change
    create_join_table :memes, :tags do |t|
      # t.index [:meme_id, :tag_id]
      # t.index [:tag_id, :meme_id]
    end
  end
end

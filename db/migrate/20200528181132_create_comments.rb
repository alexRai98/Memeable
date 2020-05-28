class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :boby
      t.references :user, null: false, foreign_key: true
      t.references :meme, null: false, foreign_key: true

      t.timestamps
    end
  end
end

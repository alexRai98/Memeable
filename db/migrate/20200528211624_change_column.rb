class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :boby, :body
  end
end

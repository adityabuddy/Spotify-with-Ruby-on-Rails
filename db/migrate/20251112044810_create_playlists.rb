class CreatePlaylists < ActiveRecord::Migration[8.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end

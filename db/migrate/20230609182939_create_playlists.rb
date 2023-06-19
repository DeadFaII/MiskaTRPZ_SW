class CreatePlaylists < ActiveRecord::Migration[7.0]
  def change
    create_table :playlists do |t|
      t.string :playlistName
      t.text :playlistDescription
      t.date :creationDate
      t.boolean :isPublic

    end
  end
end

class CreateArtistsMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :artists_musics, id: false do |t|
      t.belongs_to :artist
      t.belongs_to :music
    end

    add_index :artists_musics, [:artist_id, :music_id]
  end
end
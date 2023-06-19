class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :musicName
      t.text :musicDescription
      t.text :musicText
      t.date :publishDate
      t.boolean :isFree

    end
  end
end

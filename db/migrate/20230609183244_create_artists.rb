class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :firstName
      t.string :lastName
      t.string :nickname
      t.date :birthday

    end
  end
end

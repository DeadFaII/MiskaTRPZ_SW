class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :nickname
      t.date :birthday
      t.boolean :isArtist

    end
  end
end

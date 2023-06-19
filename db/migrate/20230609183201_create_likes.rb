class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.boolean :likeDraw
      t.references :music, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

    end
  end
end

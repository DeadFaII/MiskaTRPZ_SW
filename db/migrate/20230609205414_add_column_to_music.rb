class AddColumnToMusic < ActiveRecord::Migration[7.0]
  def change
    add_column :musics, :invisible, :boolean
  end
end

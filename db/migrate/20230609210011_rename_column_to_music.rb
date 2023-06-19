class RenameColumnToMusic < ActiveRecord::Migration[7.0]
  def change
    rename_column :musics, :invisible, :hidden
  end
end

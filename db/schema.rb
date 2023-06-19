# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_18_195304) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "artists", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "nickname"
    t.date "birthday"
  end

  create_table "artists_musics", id: false, force: :cascade do |t|
    t.integer "artist_id"
    t.integer "music_id"
    t.index ["artist_id", "music_id"], name: "index_artists_musics_on_artist_id_and_music_id"
    t.index ["artist_id"], name: "index_artists_musics_on_artist_id"
    t.index ["music_id"], name: "index_artists_musics_on_music_id"
  end

  create_table "likes", force: :cascade do |t|
    t.boolean "likeDraw"
    t.integer "music_id", null: false
    t.integer "user_id", null: false
    t.index ["music_id"], name: "index_likes_on_music_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string "musicName"
    t.text "musicDescription"
    t.text "musicText"
    t.date "publishDate"
    t.boolean "isFree"
    t.boolean "hidden"
  end

  create_table "musics_playlists", id: false, force: :cascade do |t|
    t.integer "music_id", null: false
    t.integer "playlist_id", null: false
    t.index ["music_id", "playlist_id"], name: "index_musics_playlists_on_music_id_and_playlist_id"
    t.index ["playlist_id", "music_id"], name: "index_musics_playlists_on_playlist_id_and_music_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "playlistName"
    t.text "playlistDescription"
    t.date "creationDate"
    t.boolean "isPublic"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "nickname"
    t.date "birthday"
    t.boolean "isArtist"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "likes", "musics"
  add_foreign_key "likes", "users"
end

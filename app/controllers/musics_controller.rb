# app/controllers/musics_controller.rb
class MusicsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_music, only: %i[show edit update destroy]

  # GET /musics
  def index
    @musics = Music.all
  end

  # GET /musics/1
  def show
  end

  # GET /musics/new
  def new
    @music = Music.new
    @artists = Artist.all
  end

  # GET /musics/1/edit
  def edit
    @artists = Artist.all
  end

  # POST /musics
  def create
    @music = Music.new(music_params)

    if @music.save
      redirect_to @music, notice: "Music was successfully created."
    else
      @artists = Artist.all
      render :new
    end
  end

  # PATCH/PUT /musics/1
  def update
    if @music.update(music_params)
      redirect_to @music, notice: "Music was successfully updated."
    else
      @artists = Artist.all
      render :edit
    end
  end

  # DELETE /musics/1
  def destroy
    @music.destroy
    redirect_to musics_url, notice: "Music was successfully destroyed."
  end

  private

  def set_music
    @music = Music.find(params[:id])
  end

  def music_params
    params.require(:music).permit(:musicName, :musicDescription, :musicText, :publishDate, :isFree, :audio, playlist_ids: [], artist_ids: [])
  end
end

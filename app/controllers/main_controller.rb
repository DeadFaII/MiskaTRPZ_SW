class MainController < ApplicationController
  def getMusic
    @allMusic = Music.includes(:likes).all

    if params[:search]
      @allMusic = @allMusic.where("musicName LIKE ?", "%#{params[:search]}%")
    end

    @playlists = Playlist.all

    if params[:playlist_id].present?
      @selectedPlaylist = Playlist.includes(:music).find(params[:playlist_id])
    else
      @selectedPlaylist = nil
    end
  end

  def likeMusic
    @music = Music.find(params[:id])
    @user = User.find(1)

    if @music.likes.exists?(user_id: @user.id)
      @like = @music.likes.find_by(user_id: @user.id)
      @like.destroy
      redirect_to getMusic_path, notice: "You unliked the music!"
    else
      @like = @music.likes.build(user_id: @user.id, likeDraw: true)
      if @like.save
        redirect_to getMusic_path, notice: "You liked the music!"
      else
        redirect_to getMusic_path, alert: "Unable to like the music."
      end
    end
  end
end

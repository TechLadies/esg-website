class EpisodesController < ApplicationController
  def index
    @episodes = Episode.tagged_with(params[:tag]) if params[:tag]
    @episodes ||= Episode.all
    @current_page = (params[:page] || 1).to_i
    @episodes = @episodes.active.order('published_at DESC').page(@current_page)
    @total_records = @episodes.total_count
  end

  def playlist
    @playlist = Playlist.find(params[:id])
    @episodes = @playlist.playlist_items.order('sort_order ASC').map(&:episode)
  end

  def search
    @search = search_param[:search]
    @episodes = @search.present? ? Episode.active.where("lower(title) like :term or lower(description) like :term", {term: "%#{@search.downcase}%"}).order(:sort_order) : []
  end

  def show
    @video = Episode.active.find(params[:id])
    @suggested_videos = @video.presenters.first.episodes.where.not(id: params[:id])
    puts "================"
    puts @suggested_videos.first.inspect
    puts "======================="
  end

  def alias
    @video = Episode.active.find(params[:id])
    redirect_to video_slug_path(title: @video.title.parameterize, id: @video.id)
  end

  private

  def search_param
    params.permit(:search)
  end
end

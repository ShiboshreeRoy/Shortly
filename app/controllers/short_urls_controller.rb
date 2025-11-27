class ShortUrlsController < ApplicationController
  before_action :authenticate_user!, except: [:redirect, :countdown]
  before_action :set_short_url, only: [:show, :countdown, :redirect]

  # List all URLs for current user
  def index
    @short_urls = current_user.short_urls.order(created_at: :desc)
  end

  # Form to create a new shortened URL
  def new
    @short_url = ShortUrl.new
  end

  # Save new shortened URL
  def create
    @short_url = current_user.short_urls.new(short_url_params)
    if @short_url.save
      redirect_to short_urls_path, notice: "URL shortened successfully!"
    else
      render :new, alert: "Failed to shorten URL"
    end
  end

  # Show details for a single shortened URL
  def show
  @short_url = current_user.short_urls.find_by(id: params[:id])
  unless @short_url
    redirect_to short_urls_path, alert: "Short URL not found"
  end
end


  # Countdown page before redirecting
  def countdown
     @short_url = ShortUrl.find(params[:id])
  end

  # Redirect short code to original URL
  def redirect
    if @short_url&.active?
      @short_url.increment!(:clicks_count)
      # Optional: track click using Ahoy
      ahoy.track "Clicked ShortUrl", short_url_id: @short_url.id if defined?(ahoy)
      redirect_to countdown_short_url_path(@short_url)
    else
      render plain: "Link expired or invalid", status: 404
    end
  end

  private

  def set_short_url
    @short_url = ShortUrl.find_by(short_code: params[:id] || params[:code])
  end

  def short_url_params
    params.require(:short_url).permit(:original_url, :custom_code)
  end
end

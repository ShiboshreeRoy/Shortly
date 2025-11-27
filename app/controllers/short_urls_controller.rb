class ShortUrlsController < ApplicationController
  before_action :authenticate_user!, except: [:redirect]

  def index
    @short_urls = current_user.short_urls
  end

  def new
    @short_url = ShortUrl.new
  end

  def create
    @short_url = current_user.short_urls.new(short_url_params)
    if @short_url.save
      redirect_to short_urls_path, notice: "URL shortened successfully!"
    else
      render :new
    end
  end

  def redirect
    @short_url = ShortUrl.find_by(short_code: params[:code])
    if @short_url&.active?
      @short_url.increment!(:clicks_count)
      redirect_to countdown_short_url_path(@short_url)
    else
      render plain: "Link expired or invalid", status: 404
    end
  end

  private

  def short_url_params
    params.require(:short_url).permit(:original_url, :custom_code)
  end
end

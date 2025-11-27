class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    # Total links created by user
    @total_links = current_user.short_urls.count

    # Total clicks on all links
    @total_clicks = current_user.short_urls.sum(:clicks_count)

    # Earnings example (assuming 0.01 per click)
    @total_earnings = @total_clicks * 0.01

    # Recent 5 links
    @recent_links = current_user.short_urls.order(created_at: :desc).limit(5)

    # Clicks per day for last 7 days
    @clicks_per_day = Ahoy::Event
      .where(name: "Clicked ShortUrl")
      .where("time >= ?", 7.days.ago)
      .group("DATE(time)")
      .count
  end
end

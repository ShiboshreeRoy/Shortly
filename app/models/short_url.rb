class ShortUrl < ApplicationRecord
  belongs_to :user

  validates :original_url, presence: true, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :short_code, uniqueness: true, allow_nil: true
  validates :custom_code, uniqueness: true, allow_blank: true

  before_create :generate_short_code
  before_create :set_expiration

  def generate_short_code
    self.short_code ||= SecureRandom.alphanumeric(6)
  end

  def set_expiration
    self.expires_at ||= 30.days.from_now
  end

  def active?
    expires_at.nil? || expires_at > Time.current
  end
end

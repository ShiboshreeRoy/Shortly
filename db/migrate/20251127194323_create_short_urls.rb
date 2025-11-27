class CreateShortUrls < ActiveRecord::Migration[7.2]
  def change
    create_table :short_urls do |t|
      t.references :user, null: false, foreign_key: true
      t.string :original_url
      t.string :short_code
      t.string :custom_code
      t.datetime :expires_at
      t.integer :clicks_count, default: 0

      t.timestamps
    end
  end
end

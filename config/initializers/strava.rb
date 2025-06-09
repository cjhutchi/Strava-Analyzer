require 'strava/api/client'

module StravaClient
  def self.build
    Strava::Api::Client.new(
      client_id: Rails.application.credentials.strava_client_id,
      client_secret: Rails.application.credentials.strava_client_secret,
      access_token: Rails.application.credentials.strava_access_token,
      refresh_token: Rails.application.credentials.strava_refresh_token
    )
  end
end

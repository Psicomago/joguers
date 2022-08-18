json.extract! user_preference, :id, :play_zone, :status, :notification, :notify, :game_position, :play_zone_code, :created_at, :updated_at
json.url user_preference_url(user_preference, format: :json)

Rails.application.routes.draw do

  get "/mechanics", to: "mechanics#index"
  get "/mechanics/:mechanic_id", to: "mechanics#show"
  put "/mechanics/:mechanic_id", to: "mechanics#add_ride"

  get "/amusement-parks/:park_id", to: "amusement_parks#show"
end

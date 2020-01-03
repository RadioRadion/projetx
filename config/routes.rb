Rails.application.routes.draw do
  resources :plants
end

  # get    "plants",          to: "plants#index"
  # get    "plants/new",      to: "plants#new"
  # post   "plants",          to: "plants#create"
  # # NB: The `show` route needs to be *after* `new` route.
  # get    "plants/:id",      to: "plants#show"
  # get    "plants/:id/edit", to: "plants#edit"
  # patch  "plants/:id",      to: "plants#update"
  # delete "plants/:id",      to: "plants#destroy"

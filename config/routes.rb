Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/clients", to: "clients#index", as: "clients"
  get "/clients/new", to: "clients#new", as: "new_client"
  get "/clients/:id", to: "clients#show", as: "client"
  post "/clients", to: "clients#create"
  delete "/clients/:id", to: "clients#destroy"

  get "/memberships", to: "memberships#index", as: "memberships"
  get "/memberships/new", to: "memberships#new", as: "new_membership"
  get "/memberships/:id", to: "memberships#show", as: "membership"
  post "/memberships", to: "memberships#create"
  delete "/memberships/:id", to: "memberships#destroy"

  get "/gyms", to: "gyms#index", as: "gyms"
  get "/gyms/new", to: "gyms#new", as: "new_gym"
  get "/gyms/:id", to: "gyms#show", as: "gym"
  post "/gyms", to: "gyms#create"
  delete "/gyms/:id", to: "gyms#destroy"

end

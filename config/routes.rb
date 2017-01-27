Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/contacts", to: "contacts#first_contact_method"
  # get "/allcontacts", to: "contacts#all_contact_method"

  # get "/new_contact", to: "contacts#new_contact_method"
  # post "/new_contact_result", to: "contacts#new_contact_result_method"
  root to: "contacts#index"

  get "/contacts", to: "contacts#index"
  get "/contacts/new", to: "contacts#new"
  post "/contacts", to: "contacts#create"
  get "/contacts/:id", to: "contacts#show"
  get "contacts/:id/edit", to: "contacts#edit"
  patch "/contacts/:id", to: "contacts#update"
  delete "/contacts/:id", to: "contacts#destroy"

  get "/all_johns", to: "contacts#all_johns"
end

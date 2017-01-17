Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/contacts", to: "contacts#first_contact_method"
  get "/allcontacts", to: "contacts#all_contact_method"
end

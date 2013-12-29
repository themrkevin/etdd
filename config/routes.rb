Events::Application.routes.draw do
  root "events#index"
  
  get "events/archived" => "events#archived", as: "archived_events"

  resources :events do
    resources :registrations
  end
end

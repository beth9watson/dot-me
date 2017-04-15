Rails.application.routes.draw do
  mount ScribbleStore::Engine, at: "/scribble_store"

  get '/', to: 'landing#show'
  resource :contact, only: [:show], controller: 'contact'
  resource :projects, only: [:show]
  resource :resume, only: [:show], controller: 'resume'
end

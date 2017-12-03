Rails.application.routes.draw do
  mount ScribbleStore::Engine, at: "/the-scribble-store"

  get '/', to: 'landing#show'
  get '/style-samples', to: 'utilities#style_samples'
  resource :contact, only: [:show], controller: 'contact'
  resource :projects, only: [:show] do
    get '/carshare-trip-estimator', to: 'projects#carshare_estimator'
  end
  resource :resume, only: [:show], controller: 'resume'
end

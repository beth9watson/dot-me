Rails.application.routes.draw do
  get '/', to: 'landing#show'
  resource :contact, only: [:show], controller: 'contact'
  resource :projects, only: [:show]
  resource :resume, only: [:show], controller: 'resume'

  resource :scribbles, only: [:new]
end

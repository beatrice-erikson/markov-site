Rails.application.routes.draw do
  get 'corpora/generate', to: 'corpora#generate', as: 'generate'
  resources :corpora
  root 'corpora#index', defaults: { id: 1 }
  get '/:id', to: 'corpora#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

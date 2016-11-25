Rails.application.routes.draw do
  root to: "pages#home"
  get 'about', to: 'pages#about'
  resources :contacts, only: [:create]
  get 'contact-us', as: 'new-contact', to: 'contacts#new'
end

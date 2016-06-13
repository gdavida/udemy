Rails.application.routes.draw do
  resources :companies
  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/features'
  get 'welcome/faq'
  get 'welcome/pricing'
  
  resources :invoices
  resources :companies do
  	collection { post :import}
  end

  root to: 'welcome#index'

  
  

end


Rails.application.routes.draw do
  

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end  
  
  get 'bidder/index'

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hub', to: 'hubs#index', as: 'hubs'

  get 'bidderprofiles', to: 'bidderprofiles#index', as: 'bidderprofiles'
  get 'allbidderprofiles', to: 'bidderprofiles#allbidders', as: 'showallbidderprofiles'
  get 'bidderprofiles/new', to: 'bidderprofiles#new', as: 'new_bidderprofile'
  post 'bidderprofiles', to: 'bidderprofiles#create'
  get 'bidderprofiles/:id', to: 'bidderprofiles#show', as: 'bidderprofile'
  get 'bidderprofiles/:id/edit', to: 'bidderprofiles#edit', as: 'edit_bidderprofile'
  put 'bidderprofiles/:id', to: 'bidderprofiles#update'
  patch 'bidderprofiles/:id', to: 'bidderprofiles#update'
  get 'bidderprofiles/:id/showbids', to: 'bidderprofiles#showbids', as: 'show_bids' 
  delete 'bidderprofiles/:id', to: 'bidderprofiles#destroy'


  get 'adminprofiles', to: 'adminprofiles#index', as: 'adminprofiles'
  get 'adminprofiles/new', to: 'adminprofiles#new', as: 'new_adminprofile'
  post 'adminprofiles', to: 'adminprofiles#create'
  get 'adminprofiles/:id', to: 'adminprofiles#show', as: 'adminprofile'
  get 'adminprofiles/:id/edit', to: 'adminprofiles#edit', as: 'edit_adminprofile'
  put 'adminprofiles/:id', to: 'adminprofiles#update'
  patch 'adminprofiles/:id', to: 'adminprofiles#update'

  get 'items', to: 'items#index', as: 'items'

  get 'items/:id', to: 'items#new', as: 'new_item'
  post 'items', to: 'items#create'
  put 'items/:id', to: 'items#stopauction'
  patch 'items/:id', to: 'items#stopauction'

  get 'addeditem', to: 'items#addeditem', as: 'addeditem'
  get 'allmineitem/:id', to: 'items#allmineitem', as: 'allmineitem'
  get 'items/:id', to: 'items#show', as: 'item'
  
  get 'biddingtables', to: 'biddingtables#index', as: 'biddingtables'
  get 'biddingtables/:id', to: 'biddingtables#bid', as: 'new_bid'
  post 'biddingtables', to: 'biddingtables#create'
  
end

Rails.application.routes.draw do
  
  get 'welcome/index'

  resources :series do
  	resources :temporadas, controller: "series/temporadas" do
  		resources :episodios
  	end
  end

  resources :movies

  root 'welcome#index'
end

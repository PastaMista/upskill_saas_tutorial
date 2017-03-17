#routes wird bei Seitenaufruf zuerst aufgerufen, dann der pages_Controller, der die View zurück gibt (oackt sich das HTML und setzt es im Layout bei <%= yield %) ein, Layout gilt für alle Seiten
Rails.application.routes.draw do
 root to: "pages#home"
 get "about", to: "pages#about"  #über get request in Adresszeile (/about) gelangt man zur About page
 resources :contacts
end

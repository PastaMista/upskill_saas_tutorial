#routes wird bei Seitenaufruf zuerst aufgerufen, dann der pages_Controller, der die View zurück gibt (oackt sich das HTML und setzt es im Layout bei <%= yield %) ein, Layout gilt für alle Seiten
Rails.application.routes.draw do
 root to: "pages#home"
 get "about", to: "pages#about"  #über get request in Adresszeile (/about) gelangt man zur About page, wenn get "about" wird pages controller aufgerufen und auf about geleitet
 resources :contacts    #shortcut für: get "contacts/new", to "contacts#new"   erstellt einige Routen "rails routes" im Terminal 
 get "contact-us", to:"contacts#new"  #custum url für die Contacts Seite
end

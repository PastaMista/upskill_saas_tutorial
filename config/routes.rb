#routes wird bei Seitenaufruf zuerst aufgerufen, dann der pages_Controller, der die View zurück gibt (oackt sich das HTML und setzt es im Layout bei <%= yield %) ein, Layout gilt für alle Seiten
Rails.application.routes.draw do
  devise_for :users
 root to: "pages#home"
 get "about", to: "pages#about"               #über get request in Adresszeile (/about) gelangt man zur About page, wenn get "about" wird pages controller aufgerufen und auf about geleitet
 resources :contacts, only: :create                          #shortcut für: get "contacts/new", to "contacts#new"   erstellt einige Routen "rails routes" im Terminal. In diesem Fall wird nur vreate benötigt
 get "contact-us", to:"contacts#new", as: "new_contact"          #custom url für die Contacts Seite bei Get Anfrage auf spezielle Seite weiterleiten. Mit as: Muss new_contact_path in application.html layout nicht geänert werden
end

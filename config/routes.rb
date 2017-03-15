#routes wird bei Seitenaufruf zuerst aufgerufen, dann der pages_Controller, der die View zurück gibt
Rails.application.routes.draw do
 root to: "pages#home"
 get "about", to: "pages#about"  #über get Übermittlung in Adresszeile gelangt man zur About page
end

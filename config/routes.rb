#routes wird bei Seitenaufruf zuerst aufgerufen, dann der pages_Controller, der die View zurück gibt
Rails.application.routes.draw do
 root to: "pages#home"
end

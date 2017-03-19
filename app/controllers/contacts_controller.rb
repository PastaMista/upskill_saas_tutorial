class ContactsController < ApplicationController
  
  def new  #schaut in views nach einer "new" Datei
    @contact = Contact.new    # "@" = Instanz Variable. Immer wenn contact/new aufgerufen wird, wird ein neues Objekt erstellt (hier leeres Objekt mit name: , email: , kommentar: )
  end
  
  def create    #deafult Funktion, um Sachen in DB zu speichern
    @contact = Contact.new(contact_params)   #{name: "Bob", email:"das@a.de", kommentar: "aksdkm"}
    if @contact.save  #wenn Speicherung erfolgreich
      redirect_to new_contact_path, notice: "Kommentar gesendet"
    else
      redirect_to new_contact_path, notice: "Error K4pp4"
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :kommentar)   #rails strong parameters 
    end
end
class ContactsController < ApplicationController
  
  def new  #schaut in views nach einer "new" Datei
    @contact = Contact.new    # "@" = Instanz Variable. Immer wenn contact/new aufgerufen wird, wird ein neues Objekt erstellt (hier leeres Objekt mit name: , email: , kommentar: )
  end
  
  def create    #deafult Funktion, um Sachen in DB zu speichern
    @contact = Contact.new(contact_params)   #{name: "Bob", email:"das@a.de", kommentar: "aksdkm"}
    if @contact.save  #wenn Speicherung erfolgreich
      flash[:success] = "Nachricht gesendet! :)"
      redirect_to new_contact_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")   #.errors ist eine default error funktion, full.messages.join(", ") gibt daten aus Objekt wieder Name can't be blank, Email can't be blank, Kommentar can't be blank
      redirect_to new_contact_path
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :kommentar)   #rails strong parameters 
    end
end
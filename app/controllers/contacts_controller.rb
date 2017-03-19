class ContactsController < ApplicationController
  def new  #schaut in views nach einer "new" Datei
    @contact = Contact.new    # "@" = Instanz Variable
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "Kommentar gesendet"
    else
      redirect_to new_contact_path, notice: "Error K4pp4"
    end
  end
  
  private
    def contact_params
      params.require(:contact).permit(:name, :email, :kommentar)
    end
end
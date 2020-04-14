class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to thanks_contacts_path
  end

  def thanks
  end

private
  def contact_params
    params.require(:contact).permit(:title, :name, :email, :content, :status)
  end
end

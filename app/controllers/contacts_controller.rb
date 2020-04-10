class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
  end

  def thanks
  end

private
  def contact_params
  end
end

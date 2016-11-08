class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end
  def new
  end
end

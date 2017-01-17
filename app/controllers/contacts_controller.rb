class ContactsController < ApplicationController

  def first_contact_method
    @contact = Contact.first
    render "contacts.html.erb"
  end

  def all_contact_method
   @contacts = Contact.all
   render "allcontacts.html.erb"
  end
  
end

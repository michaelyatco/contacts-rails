class ContactsController < ApplicationController

  def first_contact_method
    @contact = Contact.first
    render "contacts.html.erb"
  end

  def all_contact_method
   @contacts = Contact.all
   render "allcontacts.html.erb"
  end
  
  def new_contact_method
    render "new_contact_form.html.erb"
  end

  def new_contact_result_method
    @contact = Contact.new(first_name: params[:input_first_name], last_name: params[:input_last_name], email: params[:input_email], phone_number: params[:input_phone_number])
    @contact.save
    render "new_contact_result_method.html.erb"
  end

end

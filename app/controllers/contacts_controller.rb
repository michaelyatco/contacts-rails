class ContactsController < ApplicationController

  # def first_contact_method
  #   @contact = Contact.first
  #   render "contacts.html.erb"
  # end

  # def all_contact_method
  #  @contacts = Contact.all
  #  render "allcontacts.html.erb"
  # end
  
  # def new_contact_method
  #   render "new_contact_form.html.erb"
  # end

  # def new_contact_result_method
  #   @contact = Contact.new(first_name: params[:input_first_name], last_name: params[:input_last_name], email: params[:input_email], phone_number: params[:input_phone_number])
  #   @contact.save
  #   render "new_contact_result_method.html.erb"
  # end
  def index
    @contacts = Contact.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    address = params[:input_address]
    coordinates = Geocoder.coordinates(address)
    latitude = coordinates[0]
    longitude = coordinates[1]
    @contact = Contact.create(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], latitude: latitude, longitude: longitude)
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end

  def show
    @contact = Contact.find(params[:id])
    render "show.html.erb"
  end

  def edit
    @contact = Contact.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.assign_attributes(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], latitude: latitude, longitude: longitude)
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to "/contacts/"
  end

  def all_johns
    @contacts = Contact.all_johns
    render "all_johns.html.erb"
  end

end

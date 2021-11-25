class Users::ContactsController < ApplicationController
  
  def create
    @contact = current_user.contacts.new(contact_params)
    @contact.save
    redirect_to users_contacts_path
  end

  def index
    @user = current_user
    @contacts = current_user.contacts.all
    @genres = Genre.all
  end
  
  def destroy
    @contact = current_user.contacts.find(params[:id])
    @contact.destroy
    redirect_to users_contacts_path
  end
  
  private
  def contact_params
    params.permit(:title, :massage)
  end
end

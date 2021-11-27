class Admins::ContactsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @contacts = Contact.all
    @genres = Genre.all
  end
end

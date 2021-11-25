class Admins::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @genres = Genre.all
  end
end

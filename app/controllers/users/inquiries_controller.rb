class Users::InquiriesController < ApplicationController
  
  
  def create
    @inquire = current_user.inquire.new(inquire_params)
    if @inquire.save
     redirect_to users_inquiries_path
    else
      render :new
    end
  end

  def index
    @inquire = current_user.inquire.all
  end
  
  def destroy
  end
  
  private
  def inquire_params
    params.require(:inquire).permit(:title, :massage)
  end
  
end

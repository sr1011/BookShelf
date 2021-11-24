class HomesController < ApplicationController
  
  def top
    @books = Book.all.limit(4).order(" created_at DESC ")
  end
  
  def about
  end
  
end

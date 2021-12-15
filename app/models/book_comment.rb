class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :book
    
  def written_by?(current_user)
    user == current_user
  end
  
end

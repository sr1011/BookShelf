class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :comment, presence: true  
    
  def written_by?(current_user)
    user == current_user
  end
  
end

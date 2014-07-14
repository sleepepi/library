class Book < ActiveRecord::Base
  has_many :borrowers

  def previous_borrowers
      # borrower_list << param[:borrower]
  end
end


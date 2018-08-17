class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

RATINGS = {
  '1/5': '1_star',
  '2/5': '2_stars',
  '3/5': '3_stars',
  '4/5': '4_stars',
  '5/5': '5_stars'
}

  def humanized_rating
    RATINGS.invert[self.rating]
  end

end

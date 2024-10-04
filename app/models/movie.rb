class Movie < ApplicationRecord
  enum status: { draft: 0, published: 2 }

  has_one_attached :poster
  
  belongs_to :genre
  belongs_to :director
end

class Review < ActiveRecord::Base
  validates :content, presence:true
  validates :rating, :inclusion=> { :in => (0..5) }
  belongs_to :restaurant
end

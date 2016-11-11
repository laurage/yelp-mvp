class Restaurant < ActiveRecord::Base
  validates :name, :address, presence: true
  validates :category, :inclusion=> { :in => ["chinese", "italian", "japanese", "french", "belgian"] }
end

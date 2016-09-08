class Musician < ActiveRecord::Base
  validates :name, :presence => true

  has_many :albums
  has_many :songs
end

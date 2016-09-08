class Album < ActiveRecord::Base
  validates :title, :presence => true
  has_many :songs
  has_many :comments
  belongs_to :musician
end

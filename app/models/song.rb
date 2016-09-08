class Song < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :album
  belongs_to :musician
end

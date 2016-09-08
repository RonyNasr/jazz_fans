class Comment < ActiveRecord::Base
  validates :content, :presence => true

  belongs_to :album
  belongs_to :user
end

require 'rails_helper'

describe Album do
  it {should belong_to :musician}
  it {should have_many :comments}
  it {should have_many :songs}
end

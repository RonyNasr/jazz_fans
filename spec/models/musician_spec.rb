require 'rails_helper'

describe Musician do

  it {should have_many :albums}
  it {should have_many :songs}
end

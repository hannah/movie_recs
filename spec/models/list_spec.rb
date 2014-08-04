require 'spec_helper'

describe List do
  it {should validate_presence_of(:user)}
  it {should validate_presence_of(:movie)}
  it {should validate_uniqueness_of(:movie)}
  it {should have_many(:movies)}

  context '#movie_name' do
    it "returns a movie's name" do
      owner = FactoryGirl.create(:movie)
      expect(movie.name).to eql("#{owner.first_name} #{owner.last_name}")
    end
  end
end

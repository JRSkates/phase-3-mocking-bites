require 'track'

RSpec.describe Track do
  it "should initialize" do
    track = Track.new("Title 1", "Artist 1")
    expect(track.track_info).to eq "Title 1, Artist 1"
  end
end
require 'music_library'
require 'track'

RSpec.describe 'music integration' do
  it "adds and lists tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("Title 1", "Artist 1")
    track_2 = Track.new("Title 2", "Artist 2")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq([track_1, track_2])
  end

  it "searches for tracks by title" do
    library = MusicLibrary.new
    track_1 = Track.new("one two three", "four five six")
    track_2 = Track.new("seven eight nine", "ten eleven twelve")
    library.add(track_1)
    library.add(track_2)
    expect(library.search("two")).to eq [track_1]
  end
end
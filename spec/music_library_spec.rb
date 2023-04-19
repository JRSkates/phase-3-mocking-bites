require 'music_library'

RSpec.describe MusicLibrary do
  it 'adds and lists tracks' do
    library = MusicLibrary.new
    track_1 = double(:track_1)
    track_2 = double(:track_2)
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq([track_1, track_2])
  end

  it 'searches tracks by title' do
    library = MusicLibrary.new
    track_1 = double(:track_1, matches?: true)
    track_2 = double(:track_2, matches?: false) 
    library.add(track_1)
    library.add(track_2)
    expect(library.search('two')).to eq [track_1]
  end
end
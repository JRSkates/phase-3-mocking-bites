class Track
  def initialize(title, artist) 
    @title = title
    @artist = artist# title and artist are both strings
  end

  def track_info
    "#{@title}, #{@artist}"
  end
    
  def matches?(keyword)
    @title.split(" ").include?(keyword) || @artist.split(" ").include?(keyword) ? true : false
  end
end
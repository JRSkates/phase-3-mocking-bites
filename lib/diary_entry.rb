class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents# title, contents are both strings
  end
  
  def title
    @title
  end
  
  def contents
    @contents
  end
  
  def count_words
    @contents.split(" ").count
  end
end
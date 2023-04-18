class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end
  
  def entries
    @entries
  end
  
  def count_words
    @entries.map(&:count_words).sum
  end
end
  
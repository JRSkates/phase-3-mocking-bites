require 'diary'

RSpec.describe "diary" do
  it "adds and lists diary entries" do
    diary = Diary.new
    fake_entry = double :diary_entry
    fake_entry2 = double :diary_entry
    diary.add(fake_entry)
    diary.add(fake_entry2)
    expect(diary.entries).to eq([fake_entry, fake_entry2])
  end

  it "counts the words in all entries" do
    diary = Diary.new
    fake_entry = double :diary_entry, count_words: 2
    fake_entry2 = double :diary_entry, count_words: 3
    diary.add(fake_entry)
    diary.add(fake_entry2)
    expect(diary.count_words).to eq 5
  end
    
  class FakeClassTwoCount
    def count_words
      2
    end
  end
    
  class FakeClassThreeCount
    def count_words
      3
    end
  end
end
require 'diary_entry'

RSpec.describe DiaryEntry do
  it "constructs, returns title and contents with respective methods" do
    diary_entry = DiaryEntry.new("title1", "one two")
    expect(diary_entry.title).to eq("title1")
    expect(diary_entry.contents).to eq("one two")
  end

  it "counts words in the content" do
    diary_entry = DiaryEntry.new("title1", "one two")
    expect(diary_entry.count_words).to eq(2)
  end
end
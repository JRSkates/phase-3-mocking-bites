require 'diary_entry'
require 'diary_entry_formatter'

RSpec.describe 'integration test' do
  it "formats a diary entry" do
    diary_entry = DiaryEntry.new("title", "content")
    diary_entry_formatter = DiaryEntryFormatter.new(diary_entry)
    expect(diary_entry_formatter.format).to eq("title: content")
  end
end
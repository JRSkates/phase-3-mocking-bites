require 'diary_2'

RSpec.describe 'Diary2 constructs' do
  it 'initializes a new diary with a string' do
    diary = Diary2.new("test content")
    expect(diary.read).to eq("test content")
  end
end
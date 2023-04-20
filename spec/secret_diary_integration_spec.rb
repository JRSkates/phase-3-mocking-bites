require 'diary_2'
require 'secret_diary'

RSpec.describe 'SecretDiary Integration' do
    context "SecretDiary Integration" do
      it "constructs with a Diary2 instance" do
        diary = Diary2.new("test")
        secret_diary = SecretDiary.new(diary)
        expect {secret_diary.read}.to raise_error "Go away!"
      end

      it "returns contents if unlocked" do
        diary = Diary2.new("secret")
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        expect(secret_diary.read).to eq("secret")
      end
  
      it "locks the diary" do
        diary = Diary2.new("secret") 
        secret_diary = SecretDiary.new(diary)
        secret_diary.unlock
        secret_diary.lock
        expect {secret_diary.read}.to raise_error "Go away!"
      end
    end 
  end
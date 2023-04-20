require 'secret_diary'

RSpec.describe SecretDiary do
  context "SecretDiary" do
    it "constructs with a Diary2" do
      diary = double(:diary) 
      secret_diary = SecretDiary.new(diary)
      expect {secret_diary.read}.to raise_error "Go away!"
    end

    it "returns contents if unlocked" do
      diary = double(:diary)
      expect(diary).to receive(:read).and_return("secret")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq("secret")
    end

    it "locks the diary" do
      diary = double(:diary) 
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect {secret_diary.read}.to raise_error "Go away!"
    end
  end 
end
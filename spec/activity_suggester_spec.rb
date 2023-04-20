require 'activity_suggester'

RSpec.describe ActivitySuggester do
  it "suggest an activity" do
    fake_requestter =double (:requester)
    expect(fake_requestter).to receive(:get).with(
      URI("https://www.boredapi.com/api/activity")
    ).and_return('{"activity":"Explore the nightlife of your city",
      "type":"social","participants":1,"price":0.1,"link":"",
      "key":"2237769","accessibility":0.32}')
    activity_suggester = ActivitySuggester.new(fake_requestter)
    expect(activity_suggester.suggest).to eq "Why not: Explore the nightlife of your city"
  end
end
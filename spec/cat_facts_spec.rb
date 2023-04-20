require 'cat_facts'

RSpec.describe CatFacts do
  it "returns a fact about cats API Test" do
    fake_requester = double(:requester)
    expect(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"A cat can spend five or more hours a day grooming himself.","length":58}')
    cat_facts = CatFacts.new(fake_requester)
    expect(cat_facts.provide).to eq("Cat fact: A cat can spend five or more hours a day grooming himself.")
  end
end
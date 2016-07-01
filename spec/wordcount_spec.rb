require("sinatra")
require('capybara/rspec')
require("wordcount.rb")

describe("String#wordcount") do
  it("Will count how many times a given word appears in a given sentence")do
    expect("move".wordcount("Would you move please?")).to(eq("move"))
  end
  # it("Will return false if a sentence has no matching words")do
  #   expect("move".wordcount("Would you like a treat?")).to((false))
  # end
end

require("sinatra")
require('capybara/rspec')
require("wordcount.rb")

describe("String#wordcount") do
  it("takes a string and counts the number of occurrences in a phrase or sentence") do
    expect(("Pet").wordfreq("I have a pet dog and a pet cat.")).to(eq(3))
  end
end

require("sinatra")
require('capybara/rspec')
require("wordcount.rb")

describe("String#wordcount") do
  it("takes text as input and finds occurances of a specified word") do
    expect("pet".wordcount("pet")).to(eq(1))
  end
  it("takes text as input and finds multiple occurances of a specified word") do
    expect("the pet to pet until it's a pet".wordcount("pet")).to(eq(3))
  end
  it("takes text as input and if no occurances of a specified word are found, returns zero") do
    expect("i like a dog over anything else".wordcount("cat")).to(eq(0))
  end
end

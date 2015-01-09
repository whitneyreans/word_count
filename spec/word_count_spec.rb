require("rspec")
require("word_count")

describe("String#word_count") do
  it("Returns the number of times a given word is found inside a given string") do
    expect(("cat").word_count("There was a cat and a kitty and then a cat")).to(eq(2))
  end
end

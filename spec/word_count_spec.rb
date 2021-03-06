require("rspec")
require("word_count")

describe("String#word_count") do
  it("Returns the number of times a given word is found inside a given string") do
    expect(("cat").word_count("There was a cat and a kitty and then a cat")).to(eq(2))
  end

  it("Returns the number of times a given word is found inside a given string with unknown punctuation") do
    expect(("like").word_count("I was like, and she was like, and we were both like!")).to(eq(3))
  end

  it("Returns the number of times a given word is found inside a given string without being case sensitive") do
    expect(("Cat").word_count("cat kitty CAT dog cat MOUSE CAT")).to(eq(4))
  end
end

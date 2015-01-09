require("sinatra")
require("sinatra/reloader")
also_reload('lib/**/*.rb')
require("./lib/word_count")

get("/") do
  erb(:form)
end

get("/results") do
  @word = params.fetch("word")
  @sentence = params.fetch("sentence")
  @results = @word.word_count(@sentence)
  erb(:results)
end

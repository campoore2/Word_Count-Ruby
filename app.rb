require("sinatra")
require('sinatra/reloader')
require('./lib/wordcount')
also_reload('lib/**/*.rb')

get('/')do
  erb(:index)
end
get ('/results') do
  @word = params.fetch('sentence').wordcount(params.fetch('word'))
  erb(:results)
end

require("sinatra")
require('sinatra/reloader')
require('./lib/wordcount')
also_reload('lib/**/*.rb')

get('/')do
  erb(:form)
end
get ('/results') do
  @word = params.fetch('word').wordcount(params.fetch('sentence'))
  erb(:results)
end

require("sinatra")
require('sinatra/reloader')
require('./lib/wordcount')
also_reload('lib/**/*.rb')

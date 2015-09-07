require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  @header = "How Much Change Do You Have?"
  erb(:form)
end

get('/output') do
  @header = "Your Change:"
  @coins = params.fetch('change').to_i().coin_combinations()
  erb(:output)
end
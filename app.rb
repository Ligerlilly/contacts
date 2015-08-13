require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/address')
require('./lib/contacts')
require('./lib/email')
require('./lib/number')

get('/') do
  erb(:index)
end

post('/add_contact') do
  @contact = Contact.new(params)
  @contact.save

  erb(:index)
end

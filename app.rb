require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/address')
require('./lib/contacts')
require('./lib/email')
require('./lib/number')

get('/') do
  erb :index
end

post('/add_contact') do
  @contact = Contact.new(params)
  @contact.save
  erb :index
end

get('/contact/:id') do
  @contact = Contact.find(params['id'].to_i)
  @address = Address.find(params['id'].to_i)
  @phone = Number.find(params['id'].to_i)
  @email = Email.find(params['id'].to_i)

  erb :contact
end

post('/contact_form') do
  @address = Address.new(params)
  @phone = Number.new(params)
  @email = Email.new(params)

  @addess.save
  @phone.save
  @email.save

  erb :contact
end

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

get('/contact/:id/contact_form') do
  @contact = Contact.find(params['id'].to_i)
  erb :contact_form
end

post('/contact_form') do

  @address = Address.new(params)
  @number = Number.new(params)
  @email = Email.new(params)
  @contact = Contact.find(params['id'].to_i)


  @address.save #unless Address.find(@address.id) == @address
  @number.save #unless Number.find(@number.id) == @number
  @email.save #unless Email.find(@email.id) == @email

  redirect "/contact/#{@contact.id}"
end

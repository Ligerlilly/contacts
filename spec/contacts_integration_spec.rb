require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe "contacts path", { type: :feature } do
  it 'adds a contact and links to an individual contact with form for more contact info' do
    visit '/'
    fill_in 'first_name', with: 'hi'
    fill_in 'last_name', with: 'there'
    fill_in 'job_title', with: 'you'
    fill_in 'company', with: 'guys'
    click_button 'Add Contact'
    expect(page).to have_content 'there, hi'
    click_link 'there, hi'
    expect(page).to have_content 'First name: hi Last name: there Job Title: you Company: guys'
    click_link 'Add Contact Info'
    fill_in 'street', with: '1111 easy st'
    fill_in 'city', with: 'Portland'
    fill_in 'state', with: 'OR'
    fill_in 'zip', with: "97006"
    fill_in 'area_code', with: '555'
    fill_in 'first_half', with: '555'
    fill_in 'second_half', with: '5555'
    fill_in 'email', with: 'andrew@gmail.com'
    click_button 'Add Info'
    expect(page).to have_content 'First name: hi Last name: there Job Title: you Company: guys Street: 1111 easy st City: Portland State: OR Zip: 97006 Email: andrew@gmail.com'
  end

end

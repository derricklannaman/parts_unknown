# Feature: Destinations Page
#   As a visitor or user
#   I want view the different 'destinations'
#   the site has to offer
# Scenario:
#   As a visitor
#   I want to see a list of all the destinations
#   available

describe 'When visiting destinations' do

  it "has the text 'Explore your Destination' on the page" do
    visit('/destinations')
    expect(page).to have_content('Explore Your Destination')
  end




end
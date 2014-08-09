# Feature: Destinations Page
#   As a visitor or user
#   I want view the different 'destinations'
#   the site has to offer
# Scenario:
#   As a visitor
#   I want to see a list of all the destinations
#   available
# Scenario:
#   As a user
#   I want to click on a destination and jump to that page
#   to get more information about that destination

describe 'When visiting destinations' do

  it "has the text 'Explore your Destination' on the page" do
    visit('/destinations')
    expect(page).to have_content('Explore Your Destination')
  end

  it "clicking on a destination goes to that destination page" do
    # dest = Destination.create(
    #   name: 'destination_name',
    #   description: 'A beautilfy Place'
    #   )
    visit('/destinations')
    click_link
  end





end
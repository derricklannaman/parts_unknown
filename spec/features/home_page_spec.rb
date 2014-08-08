# Feature: Home Page
#   As a visitor
#   I want to visit the home page
#   so I can learn more about the website
# Scenario: Visit the Home page
#   Given I am a visitor
#   when I visit the home page
#   I should see the text 'Cultural Cuisine Discovery'

# Scenario:
#   when I visit the Home page
#     I can learn more about the company by
#     clicking links to get more information

# Scenario:
#   When I visit the Home page
#     I can choose a 'destination' by clicking
#     the destination button

describe 'Visiting the home page' do
  it 'should show the content Cultural Cuisine Discovery' do
    visit root_path
    expect(page).to have_content 'Cultural Cuisine Discovery'
    end

  it "shows links to a 'how it works', about, and contact page" do
    visit root_path
    expect(page).to have_link 'how it works'
    expect(page).to have_link 'about'
    expect(page).to have_link 'contact'
  end

  it "clicking 'how it works' link goes to how_it_works page" do
    visit root_path
    click_link 'how it works'
    expect(current_path).to eq(how_it_works_path)
  end

  it "clicking 'about' link goes to about page" do
    visit root_path
    click_link 'about'
    expect(current_path).to eq(about_path)
  end

  it "clicking 'contact' link goes to the contact page" do
    visit root_path
    click_link 'contact'
    expect(current_path).to eq(contact_path)
  end

  it 'will show a button to select a destination' do
    visit root_path
    expect(page).to have_selector('a.destination-btn')
  end

  it 'clicking the destination link goes to the destination page' do
    visit root_path
    click_link 'Choose Destination'
    expect(current_path).to eq('/destinations')
  end


end



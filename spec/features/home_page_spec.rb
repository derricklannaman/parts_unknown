# Feature: Home Page
#   As a visitor
#   I want to visit the home page
#   so I can learn more about the website
# Scenario: Visit the Home page
#   Given I am a visitor
#   when I visit the home page
#   I should see the text 'Cultural Cuisine Discovery'

describe 'Visiting the home page' do
  it 'should show the content Cultural Cuisine Discovery' do
    visit '/'
    expect(page).to have_content 'Cultural Cuisine Discovery'
    end
end

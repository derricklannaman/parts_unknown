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


describe 'Visiting the home page' do
  it 'should show the content Cultural Cuisine Discovery' do
    visit '/'
    expect(page).to have_content 'Cultural Cuisine Discovery'
    end

  it "shows links to a 'how it works', about, and contact page" do
    visit '/'
    expect(page).to have_link 'how it works'
    expect(page).to have_link 'about'
    expect(page).to have_link 'contact'
  end

  it "clicking 'how it works' link goes to how_it_works page" do
    visit '/'
    click_link 'how it works'
    expect(current_path).to eq(how_it_works_path)
  end

  it "clicking 'about' link goes to about page" do
    visit '/'
    click_link 'about'
    expect(current_path).to eq('/about')
  end

  it "clicking 'contact' link goes to the contact page" do
    visit '/'
    click_link 'contact'
    expect(current_path).to eq('/contact')
  end


end



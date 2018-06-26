# Author: Gail Chen
# Created: 6/25
# Edit: N/A
# Test plan:
# 1. Two correct headers
# 2. Contact information list
# 3. Map
# 4. Images
# 5. Links

require_relative '../spec_helper'

describe 'contact', :type => :feature do
  before do
    visit '/contact.html'
  end

  it 'has the correct headers' do
    expect(page).to have_selector('h1.info' , :text => 'Contact Information')
    expect(page).to have_selector('h1.photo' , :text => 'Press Photos')
  end

  it 'has a image' do
    expect(page).to have_selector 'img'
  end
  
  it 'has a list' do
    expect(page).to have_selector 'ul.info'
    within 'ul.info' do
      expect(page).to have_selector "li", :count => 4
    end
  end

  it 'has a inline frame for map' do
    expect(page).to have_selector 'iframe'
  end

  it 'has images' do
    within '#photos' do
      expect(page).to have_selector 'img', :count => 12
      expect(page).to have_selector 'label', :count => 6
      expect(page).to have_selector 'input[type="radio"]', :count => 6
    end
    expect(page).to have_css 'input[id="id1"][checked]'
  end

  it 'has links' do
    within '#info-links' do
      expect(page).to have_selector "a", :count => 4
    end
  end
end

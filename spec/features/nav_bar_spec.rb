# Author: Gail Chen
# Created: 6/25
# Edit: N/A
# Description: Test navigation bar.
# Test plan:
# 1. 5 sections on the naviagtion bar
# 2. Dropdown menu with links to three pages

require_relative '../spec_helper'

describe 'index', :type => :feature do
  before do
    visit '/'
  end

  it 'has a navigation bar' do
    expect(page).to have_selector('div.navbar')
    within 'div.navbar' do
      expect(page).to have_selector "ul"
      expect(page).to have_selector "li", :count => 5
      expect(page).to have_selector "a", :count => 7
    end
  end

  it 'has a dropdown menu' do
    expect(page).to have_selector('div.dropdown-content')
    within 'div.dropdown-content' do
      expect(page).to have_selector "a", :count => 3
    end
  end

end

describe 'contact', :type => :feature do
  before do
    visit '/contact.html'
  end

  it 'has a navigation bar' do
    expect(page).to have_selector('div.navbar')
    within 'div.navbar' do
      expect(page).to have_selector "ul"
      expect(page).to have_selector "li", :count => 5
      expect(page).to have_selector "a", :count => 7
    end
  end

  it 'has a dropdown menu' do
    expect(page).to have_selector('div.dropdown-content')
    within 'div.dropdown-content' do
      expect(page).to have_selector "a", :count => 3
    end
  end

end

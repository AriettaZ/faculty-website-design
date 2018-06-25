# Author: Ariel Zhu
# Created: 6/25
# Edit: 6/25 Gail add test plan
# Test plan:
# 1. Correct header
# 2. Correct subheaders
# 3. correct image

require_relative '../spec_helper'

describe 'index', :type => :feature do
  before do
    visit '/'
  end

  it 'has the correct header' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content("Christopher Stewart")
    end
  end

  it 'has the correct subheader' do
    expect(page).to have_selector 'h3.sketch'
    within 'h3.sketch' do
      expect(page).to have_content("Brief Biographical Sketch")
    end
    expect(page).to have_selector 'h3.highlights'
    within 'h3.highlights' do
      expect(page).to have_content("Highlights")
    end
  end

  it 'has a image' do
    expect(page).to have_selector 'img'
  end

end

require 'rails_helper'

RSpec.describe 'Static content', type: :system do
  it 'shows the static text' do
    visit "/lab_reports"
    expect(page).to have_content('Lab reports')
  end
end
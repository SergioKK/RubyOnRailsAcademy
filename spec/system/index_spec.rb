require 'rails_helper'

RSpec.describe 'Lab reports page', type: :system do
  it 'shows lab reports' do
    visit lab_reports_path
    expect(page).to have_content('Lab reports')
    expect(page).to have_content('New Lab Report')
    expect(page).to have_content('New User')
  end
end
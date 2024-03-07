require 'rails_helper'

RSpec.describe 'Users', type: :system do
  it 'should create new user' do
    visit new_lab_report_path
    fill_in('title', :with => 'Great serve')
    fill_in('description', :with => 'Rotate your shoulders faster')
    select('Weasley', from: 'lab_report[user_id]') # select from dropdown
    click_button('Create')
    expect(page).to have_content 'Lab reports'
  end
end
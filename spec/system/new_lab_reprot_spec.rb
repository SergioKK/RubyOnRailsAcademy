require 'rails_helper'

RSpec.describe 'Users', type: :system do
  let(:user) { FactoryBot.create(:user) }

  context "user" do
    before do
      visit new_user_session_path
      fill_in("Email", with: user.email)
      fill_in("Password", with: user.password)
      click_button "Log in"
      sleep(1) # time to render redirect  after login
    end

    it 'can create new lab report' do
      visit new_lab_report_path
      fill_in('title', :with => 'Great serve')
      fill_in('description', :with => 'Rotate your shoulders faster')
      click_button('Confirm')
      sleep 2
      expect(page).to have_content 'Lab reports'
      expect(page).to have_content 'Edit lab report'
    end
  end
end
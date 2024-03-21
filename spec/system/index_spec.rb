require 'rails_helper'

RSpec.describe 'Lab reports page', type: :system do
  let(:user) { FactoryBot.create(:user) }

  context "home page" do
    before do
      visit new_user_session_path
      fill_in("Email",    with: user.email)
      fill_in("Password", with: user.password)
      click_button "Log in"
      sleep(1) #time to render redirect  after login
    end

    it 'shows lab reports' do
      visit lab_reports_path
      expect(page).to have_content('Lab reports')
      expect(page).to have_content('New lab report')
      expect(page).to have_content('Edit user')
    end
  end
end
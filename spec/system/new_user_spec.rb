require 'rails_helper'

RSpec.describe 'Users', type: :system do
  it 'should create new user' do
    visit new_user_registration_path
    fill_in('First name', :with => 'Andrey')
    fill_in('Last name', :with => 'Rublev')
    fill_in('Email', :with => 'Andrey@Rublev.com')
    fill_in('Password', :with => 'Andrey@Rublev.com')
    fill_in('Password confirmation', :with => 'Andrey@Rublev.com')
    click_button('Sign up')
  end
end
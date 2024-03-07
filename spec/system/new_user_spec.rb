require 'rails_helper'

RSpec.describe 'Users', type: :system do
  it 'should create new user' do
    visit new_user_path
    fill_in('first name', :with => 'Andrey')
    fill_in('last name', :with => 'Rublev')
    fill_in('email', :with => 'Andrey@Rublev.com')
    click_button('Create')
  end
end
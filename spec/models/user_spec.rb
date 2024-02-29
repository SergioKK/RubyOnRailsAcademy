require 'rails_helper'

RSpec.describe User, type: :model do
  it "must have first name" do
    user = User.new(first_name: nil)
    expect(user).to_not be_valid
  end
end

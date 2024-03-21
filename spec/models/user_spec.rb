require 'rails_helper'

RSpec.describe User, type: :model do
  context "not valid" do
    it  "must have first name" do
      # .build not save in database, so it works faster than .create, that saves
      user = FactoryBot.build(:user, first_name: nil, last_name: "Wick", email: "email@email.com")
      expect(user).to_not be_valid
    end
    it "must have first name no longer than 100 characters" do
        user = FactoryBot.build(:user, first_name: "John"*26, last_name: "Wick", email: "email@email.com")
        expect(user).to_not be_valid
    end
    it "must have last name" do
      user = FactoryBot.build(:user, first_name: "John", last_name: nil, email: "email@email.com")
      expect(user).to_not be_valid
    end
    it "must have email" do
      user = FactoryBot.build(:user, first_name: "John", last_name: "Wick", email: nil)
      expect(user).to_not be_valid
    end
  end
end

require 'rails_helper'

RSpec.describe LabReport, type: :model do
  context "not valid" do
    it "must have title" do
      # .build not save in database, so it works faster than .create, that saves
      lab_report = FactoryBot.build(:lab_report, title: nil)
      expect(lab_report).to_not be_valid
    end
    it "must have title no longer than 250 characters" do
      lab_report = FactoryBot.build(:lab_report, title: "Spaceship"*35)
      expect(lab_report).to_not be_valid
    end
  end
end

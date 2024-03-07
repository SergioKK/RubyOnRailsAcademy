require 'rails_helper'

RSpec.describe "::LabReportsController", type: :request do
  describe "GET //lab_reports" do
    it "works!" do
      get lab_reports_path
      expect(response).to have_http_status(200)
    end
  end
end

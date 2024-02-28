require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should not save user without first name" do
    user = User.new
    assert_not user.save, "Save user without first name"
  end

  test "playing with fixtures" do
    lab_report = users(:harry).lab_reports
    assert_equal(lab_report.collect(&:title)[0], "LabReport1")
  end
end

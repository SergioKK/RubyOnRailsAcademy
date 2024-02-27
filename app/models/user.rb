class User < ApplicationRecord
  has_many :lab_reports

  validates :first_name, :last_name, presence: true, length: { maximum: 100 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, length: { maximum: 150 }
end

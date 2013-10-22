# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  email      :string(255)
#  company    :string(255)
#  location   :string(255)
#  pong       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :company, :email, :fname, :lname, :location, :pong
  before_save { |user| user.email = email.downcase }
  
  validates :fname, presence: true
  validates :lname, presence: true
  validates :company, presence: true
  validates :location, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end

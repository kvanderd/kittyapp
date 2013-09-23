# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base

  attr_accessible :username, :password

  validates :username, presence: true
  validates :password, presence: true
  validates :username, uniqueness: true
  has_secure_password
  has_many :kitties
  has_many :votes
  has_many :comments

end

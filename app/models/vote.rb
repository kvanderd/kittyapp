class Vote < ActiveRecord::Base
	validates :user_id, :uniqueness => true
	belongs_to :kitty
	belongs_to :user
  attr_accessible :up, :user_id, :kitty_id
end
# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  description      :text
#  commentable_id   :integer
#  commentable_type :string(255)
#  ancestry         :string(255)
#  kitty_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Comment < ActiveRecord::Base
	belongs_to :kitty
	belongs_to :user
	has_ancestry
	attr_accessible :parent_id, :description, :kitty_id
end

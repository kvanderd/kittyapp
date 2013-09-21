# == Schema Information
#
# Table name: kitties
#
#  id          :integer          not null, primary key
#  link        :string(255)
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Kitty < ActiveRecord::Base
	belongs_to :uses
	has_many :comments, :as => :commentable
	attr_accessible :link, :description, :user_id, :image, :remote_image_url
  mount_uploader :image, ImageUploader
end

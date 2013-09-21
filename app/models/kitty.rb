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
	has_many :votes
	attr_accessible :link, :description, :user_id, :image, :remote_image_url
  mount_uploader :image, ImageUploader


  def up_votes
    votes.select{|vote| vote.up }
  end

  def down_votes
    votes.reject{|vote| vote.up }
  end

  def aggregate
    up   = self.up_votes.size
    down = self.down_votes.size
    up - down
  end

  def time_ago
    (self.created_at - Time.now) / 60
  end
end

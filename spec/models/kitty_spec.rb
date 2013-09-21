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

require 'spec_helper'

describe Kitty do
  it { should validate_presence_of(:link) }
end

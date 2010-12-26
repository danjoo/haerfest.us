# == Schema Information
# Schema version: 20101225231231
#
# Table name: images
#
#  id         :integer         not null, primary key
#  style      :string(255)
#  photo_type :string(255)
#  path       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Image < ActiveRecord::Base
  attr_accessible :style, :photo_type, :path

  validates :style, :presence => true
  validates :path, :presence => true
end

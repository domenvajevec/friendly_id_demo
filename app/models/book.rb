# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  slug        :string(255)
#  cover       :string(255)
#  user_id     :integer
#

class Book < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  mount_uploader :cover, CoverUploader

  belongs_to :user
end

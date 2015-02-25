# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  headline   :string
#  detail     :text
#  created_at :datetime
#  updated_at :datetime
#  poster_id  :integer
#

class Post < ActiveRecord::Base
  validates :poster_id, :detail, :headline, presence: true 
  belongs_to :poster, class_name: 'User'
  has_many :comments
end

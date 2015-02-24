# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  posted_by  :string
#  headline   :string
#  detail     :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  validates :posted_by, :detail, :headline, presence: true 
  belongs_to :poster, class_name: 'User'
end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  first_name :string
#  last_name  :string
#

class User < ActiveRecord::Base
  has_many :posts, foreign_key: :poster_id
  has_many :comments
  has_many :events, foreign_key: :organiser_id

  def name
    "#{first_name} #{last_name}"
  end
end

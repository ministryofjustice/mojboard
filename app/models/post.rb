class Post < ActiveRecord::Base
  validates :posted_by, presence: true 
end

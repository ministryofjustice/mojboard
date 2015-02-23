class Post < ActiveRecord::Base
  validates :posted_by, :detail, :headline, presence: true 
end

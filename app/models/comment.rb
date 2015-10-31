class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :link

  validates_presence_of :content, :link_id
end

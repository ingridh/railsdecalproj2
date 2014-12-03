class Comment < ActiveRecord::Base
	belongs_to :event
	belongs_to :user
	validates :attending, :presence => true
	validates :user_id, :presence => true, :uniqueness => true
	validates :event_id, :presence => true, :uniqueness => true
end

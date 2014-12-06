class Event < ActiveRecord::Base
	has_many :comments
	belongs_to :user

    validates :title, presence: true, length: { maximum: 30 }
    validates :description, presence: true, length: { maximum: 200 }
    validates :location, presence: true
	validates :user_id, presence:true
end

class Event < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :title, :presence => true, length: { maximum: 50 }
	validates :description, :presence => true, length: { maximum: 200 }
	validates :location, :presence => true
	validates :time, :presence => true
	validates :date, :presence => true

end

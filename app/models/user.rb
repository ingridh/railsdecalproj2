class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :events
  has_many :comments
  # validates :name, :presence => true
<<<<<<< HEAD
=======
  # errors when raking db seed if this line is not commented out
>>>>>>> ac5dd8d24c6cddb0d20192027ba03a941c8d6a60
end

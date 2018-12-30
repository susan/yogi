class Routine < ApplicationRecord
	belongs_to :user
	has_many :routine_poses
  has_many :yoga_poses, through: :routine_poses, dependent: :destroy
	validates :name, uniqueness:true, presence: true, length: { maximum: 50 }
	validates_format_of :name, :with => /\A[a-zA-Z0-9\s]+\z/i
end

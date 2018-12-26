class Routine < ApplicationRecord
	belongs_to :practitioner
	has_many :routine_poses, dependent: :destroy
  has_many :yoga_poses, through: :routine_poses
	validates :name, uniqueness:true, presence: true, length: { maximum: 50 }
	validates_format_of :name, :with => /\A[a-zA-Z0-9\s]+\z/i
end

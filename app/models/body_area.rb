class BodyArea < ApplicationRecord
	has_many :yoga_poses
	validates :name, uniqueness:true, presence: true
end

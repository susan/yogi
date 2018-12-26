class YogaPose < ApplicationRecord
  belongs_to :body_area
  has_many :routine_poses
  has_many :routines , through: :routine_poses

  validates :name, uniqueness:true, presence: true, length: { maximum: 255 }
  validates :difficulty_level, numericality: {only_integer: true}
  validates_inclusion_of :difficulty_level, :in =>1..3
end

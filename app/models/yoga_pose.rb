class YogaPose < ApplicationRecord
  belongs_to :body_area
  has_many :routine_poses
  has_many :routines , through: :routine_poses
  validates :name, uniqueness:true, presence: true, length: { maximum: 255 }
  #validates_format_of :name, :with => /\A[a-zA-Z0-9\s]+\z/i
  validates :difficulty_level, numericality: {only_integer: true}
  validates_inclusion_of :difficulty_level, :in =>1..3

   def self.search(search)
   	 if search
   	 	 body_area = BodyArea.find_by(name: search)
       if body_area
       	 self.where(body_area_id: body_area)
       else
         YogaPose.all
       end
      else
        YogaPose.all
      end
   end

   def add_likes
  self.increment(:likes)
  self.save
 end

 def self.popular_poses
    YogaPose.all.order('likes desc').limit(5).to_a
  end

end

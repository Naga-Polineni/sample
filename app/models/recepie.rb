class Recepie < ActiveRecord::Base
  belongs_to :chef
  has_many :likes 
  validates :name,  presence: true, length: {minimum: 3 , maximum: 100 } 
  validates :summary,:description,  presence: true, length: {minimum: 4 , maximum: 400 }
  validates :chef_id, presence: true
  mount_uploader :picture , PictureUploader
  validate :picture_size
  
  private 
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "Should be less than 5MB")
    end
  end
  
end

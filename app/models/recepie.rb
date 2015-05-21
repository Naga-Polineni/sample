class Recepie < ActiveRecord::Base
  belongs_to :chef
  validates :name,:summary,:description,  presence: true, length: {minimum: 3 , maximum: 100 }
  validates :summary,:description,  presence: true, length: {minimum: 4 , maximum: 100 }
  validates :chef_id, presence: true
end

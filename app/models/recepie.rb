class Recepie < ActiveRecord::Base
  
  validates :name,:summary,:description,  presence: true, length: {minimum: 3 , maximum: 100 }
  validates :summary,:description,  presence: true, length: {minimum: 4 , maximum: 100 }
  
end

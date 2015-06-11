class Chef < ActiveRecord::Base
  has_many :recepies, class_name: "Recepie"
  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :name, presence: true, length: {minimum: 3 , maximum: 100 }
  validates :email, presence: true, uniqueness: {case_sensitive: false},
                                            format: {with: VALID_EMAIL_REGEX }
                                            
  has_secure_password                                         
end

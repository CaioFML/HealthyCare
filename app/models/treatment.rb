class Treatment < ApplicationRecord
  #belongs_to :exams
  
  validates :title, presence: true
  validates :description, presence: true
  validates :establishment, presence: true
  validates :type, presence: true
end

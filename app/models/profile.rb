class Profile < ApplicationRecord
  has_and_belongs_to_many :skills

  has_many :checks
  has_many :requirements, through: :checks
end

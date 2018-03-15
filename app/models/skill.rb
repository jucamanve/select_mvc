class Skill < ApplicationRecord
  has_and_belongs_to_many :profiles
  has_many :requirements

  accepts_nested_attributes_for :requirements, allow_destroy: true, reject_if: proc { |attributes| attributes['name'].blank? }
end

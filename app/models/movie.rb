class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :duration, :numericality => { :less_than_or_equal_to => 2764800, :greater_than_or_equal_to => 0 }

  validates :title, :uniqueness => { :scope => [:year] }

  validates :title, :presence => true

  validates :year, :presence => true

  validates :year, :numericality => { :less_than_or_equal_to => 2050, :greater_than_or_equal_to => 1870 }

end

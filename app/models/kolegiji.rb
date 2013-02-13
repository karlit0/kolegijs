class Kolegiji < ActiveRecord::Base
  attr_accessible :ime, :komentar, :ocjena
  validates :ocjena, inclusion: { in: 1..5 }
end

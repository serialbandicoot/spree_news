class Spree::Tick < ActiveRecord::Base
  validates_presence_of :description
#  validates_length_of :description, :maximum => 150

  scope :published, lambda { where(:published => true) }
  attr_accessible :title, :description, :published
end


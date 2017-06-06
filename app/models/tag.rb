class Tag < ActiveRecord::Base
  validates :name, presence: true

  has_many :taggings
  has_many :jobs, through: :taggings, counter_cache: true

  def total
    self.taggings.count
  end
end

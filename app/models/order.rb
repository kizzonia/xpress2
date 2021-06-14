class Order < ApplicationRecord
  extend FriendlyId
  friendly_id :tracking_number, use: :slugged

  belongs_to :user
  has_many :travels
before_validation :load_defaults

  def load_defaults
    if self.new_record?
      length = 8
      self.tracking_number = SecureRandom.random_number(10000000000)
      self.status = false
    end
  end
end

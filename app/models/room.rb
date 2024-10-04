class Room < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true
  validates :description, presence: true

  before_save :generate_code

  def generate_code
    self.code = SecureRandom.hex(3)
  end
end

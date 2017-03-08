class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, presence: true
  validates :address, presence: {message:'You are a dick!'}
  validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end

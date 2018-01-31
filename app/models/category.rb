class Category < ApplicationRecord
  belongs_to :store
  has_many :items
  before_save :format_name

  validates_presence_of :name, :lx, :rx, :ty, :by, :store_id
  validates :name, length: { in: 2..20 }

  private

  def format_name
    self.name = name.downcase.titleize
  end
end

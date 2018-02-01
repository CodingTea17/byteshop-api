class Account < ApplicationRecord
  belongs_to :user
  has_many :lists
  before_save :format_name

  validates_presence_of :name, :user_id
  validates :name, length: { in: 2..20 }

  private

  def format_name
    self.name = name.downcase.titleize
  end
end

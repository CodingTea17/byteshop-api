class List < ApplicationRecord
  has_many :list_items
  has_one :store, foreign_key: :store_id, class_name: 'List'
  belongs_to :account
end

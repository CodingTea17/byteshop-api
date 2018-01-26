class ListItem < ApplicationRecord
  belongs_to :list
  has_one :item, foreign_key: :item_id, class_name: 'ListItem'
end

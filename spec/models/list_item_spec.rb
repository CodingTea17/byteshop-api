require 'rails_helper'

describe ListItem, 'relations' do
  it { should belong_to :list }
  it { should belong_to :item }
end

describe ListItem, 'validations' do
  it { should validate_presence_of :name }
  it { should validate_presence_of :list_id }
  it { should validate_presence_of :item_id }
  it { should validate_length_of(:name).is_at_least(2).is_at_most(20) }
  it { should validate_numericality_of(:list_id) }
  it { should validate_numericality_of(:item_id) }
end

describe ListItem, 'custom validations' do
  it 'will validate_list_id' do
    
  end
end

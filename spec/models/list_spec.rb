require 'rails_helper'

describe List, 'relations' do
  it { should have_one :store }
  it { should have_many :list_items }
  it { should belong_to :account }
end

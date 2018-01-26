require 'rails_helper'

describe ListItem, 'relations' do
  it { should belong_to :list }
  it { should have_one :item }
end

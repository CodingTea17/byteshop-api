require 'rails_helper'

describe Account, 'relations' do
  it { should belong_to :user }
  it { should have_many :lists }
end

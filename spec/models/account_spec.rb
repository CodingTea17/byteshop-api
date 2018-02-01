require 'rails_helper'

describe Account, 'relations' do
  it { should belong_to :user }
  it { should have_many :lists }
end

describe Account, 'validations' do
  it { should validate_presence_of :name }
  it { should validate_presence_of :user_id }
  it { should validate_length_of(:name).is_at_least(2).is_at_most(20) }
end

describe Account, 'callbacks' do
  it { is_expected.to callback(:format_name).before(:save) }
end

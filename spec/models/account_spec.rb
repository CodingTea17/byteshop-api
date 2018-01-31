require 'rails_helper'

describe Account, 'validations' do
  it { should validate_presence_of :name }
  it { should validate_presence_of :user_id }
  it { should validate_length_of(:name).is_at_least(2).is_at_most(20) }
end

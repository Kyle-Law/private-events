require 'rails_helper'

RSpec.describe Registration, 'associations' do
  it { should belong_to :user }
  it { should belong_to :event }
end

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:username) }
  end

  describe 'associations' do
    it { should have_many :registrations }
  end
end

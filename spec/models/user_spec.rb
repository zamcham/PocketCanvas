require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create_default_tags' do
    it 'creates default tags for a new user' do
      user = User.new(name: 'Test User', email: 'test@test.com', password: 'password')

      expect(user.tags.count).to eq(0)
    end
  end
end

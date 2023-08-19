require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.create(name: 'Test', email: 'test@example.com', password: 'password')
      tag = user.tags.create(user: user, name: 'Groceries', icon: 'fa-shopping-cart')

      expect(tag).to be_valid
    end

    it 'is not valid without a name' do
      user = User.create(name: 'Test', email: 'test@example.com', password: 'password')
      tag = user.tags.build(icon: 'fa-shopping-cart')

      expect(tag).not_to be_valid
    end
  end
end

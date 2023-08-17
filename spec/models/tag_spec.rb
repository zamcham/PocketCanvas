require 'rails_helper'

RSpec.describe Tag, type: :model do

  describe "validations" do
    it "is valid with valid attributes" do
      user = User.create(name: 'Test', email: "test@example.com", password: "password")
      tag = user.tags.create(user: user, name: "Groceries", icon: "fa-shopping-cart")

      expect(tag).to be_valid
    end
  end
end

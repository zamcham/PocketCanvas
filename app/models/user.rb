class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transaction_records
  has_many :tags

  after_commit :create_default_tags, on: :create

  private

  def create_default_tags
    puts 'Creating default tags...'
    user = self
    # Create your default tags here
    default_tags = [
      { name: 'Groceries', icon: '<i class="fa-solid fa-cart-shopping"></i>' },
      { name: 'Utilities', icon: '<i class="fa-solid fa-faucet"></i>' },
      { name: 'Personal', icon: '<i class="fa-solid fa-user"></i>' }
    ]

    default_tags.each do |tag|
      user.tags.create!(user: self, name: tag[:name], icon: tag[:icon])
    end
  end
end

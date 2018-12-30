class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_one_attached :avatar
  validates_uniqueness_of :username, :email

  attr_writer :login

  def login
    @login || self.username || self.email
  end
end

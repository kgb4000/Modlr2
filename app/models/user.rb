class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :casts
  has_many :pins

  has_and_belongs_to_many :roles

  validates :name, presence: true
  validates_uniqueness_of :name, :email, :case_sensitive => false
  
end

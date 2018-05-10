class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :Hearthpwn_Name, :Blizzard_ID, presence: true
  validates_format_of :Blizzard_ID, :with => /\A.+[#]\d{4}\z/
end

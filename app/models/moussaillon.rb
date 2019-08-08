class Moussaillon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :sign_up_code

  validates :sign_up_code,
  on: :create,
  presence: :true,

  inclusion: {in: ["GossipTeam2019"]}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gossips

end

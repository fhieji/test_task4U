class User < ApplicationRecord
  enum role: { general: 1, admin: 99 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ticket_watchers, dependent: :destroy, foreign_key: 'user_id'
  has_many :tickets, through: :ticket_watchers

  has_many :teams, dependent: :destroy, foreign_key: 'user_id'
  has_many :dashboards, through: :teams
end

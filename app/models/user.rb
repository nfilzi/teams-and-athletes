class User < ApplicationRecord
  belongs_to :trainer, optional: true, class_name: 'User'
  belongs_to :team, optional: true

  has_many :trained_athletes, source: :trainer, foreign_key: :trainer_id, class_name: 'User'
  has_many :trained_teams, through: :trained_athletes, source: :team, class_name: 'Team'
end

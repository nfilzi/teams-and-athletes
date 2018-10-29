class Team < ApplicationRecord
  has_many :athletes, source: :users, class_name: 'User'
  has_many :trainers, through: :athletes
end

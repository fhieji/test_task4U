class Team < ApplicationRecord
  belongs_to :users
  belongs_to :dashboards
end

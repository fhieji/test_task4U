class Team < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :dashboard, optional: true
end

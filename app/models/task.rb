class Task < ApplicationRecord
  belongs_to :project
  validates :title, :date, presence: true
end

class Task < ApplicationRecord
  validates :title, presence: true
  validates :status, inclusion: { in: %w(Todo Doing Done) }
end

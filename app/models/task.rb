class Task < ApplicationRecord
  belongs_to :project

  def mark_completed
    update completed: true
  end

  def complete?
    completed?
  end
end

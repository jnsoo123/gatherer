class Project < ApplicationRecord
  has_many :tasks

  def self.velocity_length_in_days
    21
  end

  def done?
    tasks.reject(&:complete?).empty?
  end

  def incomplete_tasks
    tasks.reject(&:complete?)
  end

  def total_size
    tasks.sum(&:size)
  end

  def remaining_size
    incomplete_tasks.sum(&:size)
  end

  def completed_velocity
    tasks.sum(&:points_toward_velocity)
  end

  def current_rate
    completed_velocity * 1.0 / Project.velocity_length_in_days
  end

  def projected_remaining_days
    remaining_size / current_rate
  end

  def on_schedule?
    return false if projected_remaining_days.nan?
    (Date.today + projected_remaining_days) <= due_date
  end
end

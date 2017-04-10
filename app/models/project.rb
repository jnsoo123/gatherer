class Project < ApplicationRecord
  has_many :tasks

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
end

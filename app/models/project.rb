class Project < ApplicationRecord
  has_many :tasks

  def done?
    tasks.reject(&:complete?).empty?
  end
end

class Project < ApplicationRecord
  has_many :tasks

  def done?
    tasks.empty?
  end
end

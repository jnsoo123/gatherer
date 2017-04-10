class Project < ApplicationRecord
  has_many :tasks

  def done?
    true
  end
end

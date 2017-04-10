require "rails_helper"

RSpec.describe Project do
  describe "Initialization" do
    let (:project) { Project.new }
    let (:task)    { Task.new }

    it "considers a project with no tasks to be done" do
      project = Project.new
      expect(project.done?).to be_truthy
    end

    it "knows a project with a task is not done" do
      project = Project.new
      task = Task.new
      project.tasks << task
      expect(project.done?).to be_falsy
    end
  end
end

require "rails_helper"

describe CreatesProject do
  it "creates a project given a name" do
    creator = CreatesProject.new(name: "Project Runway") 
    creator.build
    expect(creator.project.name).to eq("Project Runway")
  end 

  describe "task string parsing" do
    let(:creator) { CreatesProject.new(name: "Test", task_string: task_string) }
    let(:tasks) { creator.convert_string_to_tasks }

    describe "with an empty string" do
      let(:task_string) { "" }
      specify { expect(tasks.size).to eq 0 }
    end

    describe "with a single string" do
      let(:task_string) { "Start things" }
      specify { expect(tasks.size).to eq 1 }
      specify { expect(tasks.map(&:title)).to eq ["Start things"] }
      specify { expect(tasks.map(&:size)).to eq [1] }
    end

    describe "with a single string with size" do
      let(:task_string) { "Start things:3" }
      specify { expect(tasks.size).to eq 1 }
      specify { expect(tasks.map(&:title)).to eq ["Start things"] }
      specify { expect(tasks.map(&:size)).to eq [3] }
    end

    describe "with multiple tasks" do
      let(:task_string) { "Start things:3\nEnd things:2" }
      specify { expect(tasks.size).to eq 2 }
      specify { expect(tasks.map(&:title)).to eq ["Start things", "End things"] }
      specify { expect(tasks.map(&:size)).to eq [3,2] }
    end

    it "attaches tasks to the project" do
      creator = CreatesProject.new(name: "Test", task_string: "Start things:3\nEnd things:2")
      creator.create
      expect(creator.project.tasks.size).to eq 2
      expect(creator.project).to_not be_a_new_record
    end
  end
end

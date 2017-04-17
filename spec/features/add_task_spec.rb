require 'rails_helper'

describe 'adding a new task' do
  let(:project) { FactoryGirl.create(:project) }

  it "can add and reorder task" do
    visit project_path(project)
  end
end

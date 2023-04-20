require 'task_formatter'

RSpec.describe TaskFormatter do
  context 'formats the task' do
    it 'initializes and returns an incomplete task' do
      task = double(:task, title: "test", complete?: false)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] test"
    end
    it 'initializes and returns an complete task' do
      task = double(:task, title: "test", complete?: true)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] test"
    end
  end
end
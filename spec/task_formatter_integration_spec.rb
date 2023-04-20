require 'task_formatter'
require 'task'

RSpec.describe 'TaskFormatter integration' do
  context 'formats the task' do
    it 'initializes and returns an incomplete task' do
      task = Task.new("my title")
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] my title"
    end
    it 'initializes and returns an complete task' do
      task = Task.new("my title 2")
      task.mark_complete
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] my title 2"
    end
  end
end
require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "returns all tasks" do
    task_list = TaskList.new
    task_1 = double(:task)
    task_2 = double(:task_2)
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "returns false if tasks is empty" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "Returns false if some are not complete" do
    task_list = TaskList.new
    task_1 = double(:task1, complete?: true)
    task_2 = double(:task2, complete?: true)
    task_3 = double(:task3, complete?: false)
    task_list.add(task_1)
    task_list.add(task_2)
    task_list.add(task_3)
    expect(task_list.all_complete?).to eq false
  end

  it "Returns true if all complete" do
    task_list = TaskList.new
    task_1 = double(:task1, complete?: true)
    task_2 = double(:task2, complete?: true)
    task_3 = double(:task3, complete?: true)
    task_list.add(task_1)
    task_list.add(task_2)
    task_list.add(task_3)
    expect(task_list.all_complete?).to eq true
  end
end
require "rspec"
require "./todolist"

describe Task do

	before :each do
		@task = Task.new("Buy the milk")
		@task2 = Task.new("Do laundry")
	end

	describe "complete?" do
		it "complete attribute status will show false for a new task" do
			expect(@task.complete?).to eq(false)
		end
	end
	describe "complete!" do
		it "afert completing a task, complete attribute will return true" do
			expect(@task.complete?).to eq(false)
			@task.complete!
			expect(@task.complete?).to eq(true)
		end
	end
	describe "make_incomplete!" do
		it "afert completing a task, complete attribute will return true" do
			#expect(@task.complete?).to eq(false)
			@task.complete!
			#expect(@task.complete?).to eq(true)
			@task.make_incomplete!
			expect(@task.complete?).to eq(false)
		end
	end
	describe "created_at attribute" do
		it "could order tasks by time of creation" do
			@task
			@task2
			expect(@task.created_at < @task2.created_at).to eq(true)
		end
	end
	describe "update_content!" do
		it "changes the task content" do
			task = Task.new("Buy the dog")
			expect(task.content).to eq("Buy the dog")
			task2 = Task.new("Walk the milk")
			expect(task2.content).to eq("Walk the milk")
			task.update_content!("Buy the milk")
			task2.update_content!("Walk the dog")
			expect(task.content).to eq("Buy the milk")
			expect(task2.content).to eq("Walk the dog")
		end
	end
	describe "update_at attribute" do
		it "" do
			task = Task.new("Buy the dog")
			expect(task.update_at).to eq(nil)
			task.update_content!("Buy the milk")
			expect(task.update_at.class).to eq(Time)
		end

	end
end

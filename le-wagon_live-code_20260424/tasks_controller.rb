# Require
require_relative "task"
require_relative "tasks_view"
# Serve user actions
class TasksController
  def initialize(repository)
    @repository = repository
    @view = TasksView.new
  end

  def list
    display_tasks
  end

  def add
    description = @view.ask_for_description
    task = Task.new(description)
    @repository.create(task)
  end

  def mark_as_done
    display_tasks
    index = @view.ask_for_index
    task = @repository.find(index)
    task.mark_as_done!
  end

  def remove
    display_tasks
    index = @view.ask_for_index
    @repository.destroy(index)
  end

  private

  def display_tasks
    tasks = @repository.all
    @view.display_list(tasks)
  end
end
# OOP - MVC
# Building Software
# Model
# Definition - Class - Singular
class Task
  attr_reader :description

  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end
end

# Database is needed to store data --> tasks
# Respository - in memory
# Saving and Retrieving and destruction of tasks
class TaskRepository
  def initialize
    @tasks = []
  end
  # CRUD Actions
  def create(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
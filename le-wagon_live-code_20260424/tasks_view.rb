class TasksView
  # Task - Description
  # Task - Ask - delete/done
  # Task - Display
  def display_list(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "[X]" : "[ ]"
      puts "#{done} #{index + 1} - #{task.description}"
    end
  end
end
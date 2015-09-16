class Task < ActiveRecord::Base
  def current
    "Task: #{name} Complete?: #{complete}"
  end
end

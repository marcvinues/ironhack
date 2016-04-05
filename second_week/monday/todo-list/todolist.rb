class Task
    attr_reader :content, :id
    attr_accessor :completed
    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false

    end

    def completed? (isCompleted)
        if @completed == false
            false
        else
            true
        end
    end

    def complete! (isCompleted)
        @completed == true
     end
end

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id

# task.completed?
# task.complete!
# task.completed?

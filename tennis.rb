class Warmup
  attr_reader :direction, :difficulty
  def initialize(options = {})
    @direction = options.fetch(:direction)
    @difficulty = options.fetch(:difficulty)
  end
end

class Workout
  attr_reader :direction, :difficulty
  def initialize(options = {})
    @direction = options.fetch(:direction)
    @difficulty = options.fetch(:difficulty)
  end
end

class Cooldown
  attr_reader :direction, :difficulty
  def initialize(options = {})
    @direction = options.fetch(:direction)
    @difficulty = options.fetch(:difficulty)
  end
end

def create_warmup_array
  seventeens = Warmup.new(direction: "forwards", difficulty: 10)
  move_the_mountain = Warmup.new(direction: "forwards", difficulty: 5)
  run_the_lines_realay = Warmup.new(direction: "backwards", difficulty: 8)
  warmup_array = [seventeens, move_the_mountain, run_the_lines_realay]
end

def create_workout_array

end

def create_cooldown_array
end

def exercize_chooser(exercize_array)
  exercize_array.each do |workout|
    if workout.difficulty <10
      puts workout.direction
    end
  end
end



exercize_chooser(create_warmup_array)

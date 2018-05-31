class BasicRuby
  attr_reader :some_array

  attr_accessor :access_me

  def initialize(optional_thing = true)
    $global_var = 'global'
    @@class_var = 'class_var'
    @instance_var = 'instance_var'
    @some_array = [1, 2, 3]
    @some_string = 'georgia'
    @some_hash = { bob: 23, jim: 25, jill: 33, jane: 22 }
    @optional_thing = optional_thing
    @logged_in = true
    @not_nil = 1
    @access_me = 0
  end

  def implicit_return
    "hello world!"
  end

  def expicit_return
    return "hello world!"
  end

  def string_interpolation(string)
    "#{string} is interpolated"
  end

  def shovel_it(thing)
    [] << thing
  end

  def add_numbers
    total = 0
    @some_array.each do |number|
      total += number
    end
    total
  end

  def increase_numbers
    new_array = @some_array.map do |number|
      number + 1
    end
    new_array
  end

  def increase_numbers_shorter
    @some_array.map(&:next)
  end

  def non_destructive
    @some_string.reverse
    @some_string
  end

  def destructive
    # @some_string = @some_string.reverse
    @some_string.reverse!
  end

  def this_equal_to_that?(this, that)
    this == that
  end

  def one_hash_key
    @some_hash[:jim]
  end

  def all_hash_keys
    @some_hash.keys
  end

  def all_hash_values
    @some_hash.values
  end

  def sum_some_hash_values
    @some_hash.values.reduce(:+)
  end

  private

  def nope
    'this won\'t work'
  end
end

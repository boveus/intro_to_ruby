class BasicRuby
  attr_reader :some_array

  def initialize(optional_thing = true)
    @some_array = [1, 2, 3]
    @some_string = 'georgia'
    @some_hash = { bob: 23, jim: 25, jill: 33, jane: 22 }
    @optional_thing = optional_thing
    @logged_in = true
    @not_nil = 1
  end

  def add_numbers
    total = 0
    @some_array.each do |number|
      total += number
    end
    total
  end

  def double_numbers
    new_array = @some_array.map do |number|
      number * 2
    end
    new_array
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

  def or_equals
    @optional_thing || true
  end

  def nil_checking
    @not_nil && @not_nil == 5
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
end

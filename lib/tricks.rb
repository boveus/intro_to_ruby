# monkey patching
class String
  def clear
    self
  end
end
class Fixnum
  def +(other)
    self - other
  end
end

# Truthy vs falsey
false || 0
true || false
false || '0'
nil || false

# ||= nonsense
username = nil
username ||= 'default'
username += '@somewhere.com'

# Paralell assignment
a, b, c = 1, 2, 3

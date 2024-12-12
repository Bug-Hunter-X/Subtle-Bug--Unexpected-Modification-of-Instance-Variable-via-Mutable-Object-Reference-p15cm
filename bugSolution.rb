```ruby
class MyClass
  def initialize(value)
    @value = value.dup # Create a deep copy of mutable objects
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value.dup # Create a deep copy of mutable objects
  end
end

my_object = MyClass.new([1,2,3])
puts my_object.value #=> [1, 2, 3]

my_array = my_object.value
my_array << 4
puts my_object.value #=> [1, 2, 3]

#The value of my_object.value remains unchanged because a copy of the array was created.

#For more complex objects, consider using Marshal.load(Marshal.dump(obj)) for deep cloning, though it has performance implications
```
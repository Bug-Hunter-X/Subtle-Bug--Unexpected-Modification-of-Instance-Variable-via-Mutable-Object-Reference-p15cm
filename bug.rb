```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.value = 20
puts my_object.value #=> 20

#Uncommon error: Incorrect usage of instance variables
my_object.value = "hello"
puts my_object.value #=> "hello"

#The problem is not immediately apparent when using simple data types, but when you are working with complex objects or mutable structures like arrays or hashes, errors could easily creep in and be difficult to track down.

my_array = [1,2,3]
my_object.value = my_array
puts my_object.value #=> [1, 2, 3]

my_array << 4
puts my_object.value #=> [1, 2, 3, 4]

#The value of my_object.value is changed, even though it's not directly modified.  This happens because you're storing a reference to the array.
#Changes to the array made through the my_array variable are reflected when accessing the array through my_object.value

```
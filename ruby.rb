# Ruby Assessments

#### 1. Use two different Ruby loops to loop over this array, multiplying each element by 2.

tempArray = [1, 2, 6, 9, 3, 21]

# your ruby loop here
newArray = tempArray.map { |n| n * 2 }
newArray = tempArray.each { |n| n * 2 }

#### 2. From all the built in Ruby methods we've seen in class this week, choose three that you think are particularly helpful and create examples to show how they work.

# your three built in ruby methods
gets.chomp #removes the /n from user-entered text so that you don't have to account for that when using/testing their input
input.to_str or input.to_i #converts an element (in this case I'm thinking of user input) to a string or to an integer so that you can then perform additional functions on that data type, such as mathetmatical calculations on integers or applying string methods to strings
time.sleep #pauses a script, really convenient for text-based games when you want to give people time to read before running the rest of the program

#Handy guide to built-in methods: https://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/function.html

#### 3. Create a method that takes in a sentence and returns a new sentence with the first letter of each word capitalized.

sentence = "hello there, how are you?"
expected output = "Hello There, How Are You?"

def initial_caps(array)
  array = string.split(" ")
  array.map { |n| n.capitalize}.join(" ")
end

#### 4.  Create a method that takes in a string and returns a new string with all the vowels removed. HINT:  there's a built in string method for this

no_vowels = "I have no vowels"
expected output = " hv n vwls"

no_vowels.delete('AEIOUaeiou')

#### 5. Look at this horrible ruby code, and fix it to be good ruby code.

``` ruby
class Example
  def initialize(day)
    @day = day
  end

  def get_day
    @day
  end

  def say_hi
    if(day == "Friday")
      puts "TGIF!"
    elsif(day == "Monday")
      puts "It's Monday again"
    else
      puts "another day"
    end
  end
end
```
#### 6a.  Create a class called Animal that initializes with a color.  Create a method in the class called legs that returns 4.

# your class here

class Animal
  def initialize (color)
    @color = color
  end

  def get_color
    @color
  end

  def legs
    @legs = 4
  end
end

#### 6b.  Create a new instance of an Animal with a brown color.  Return how many legs the animal has.
dog = Animal.new :brown
dog.legs

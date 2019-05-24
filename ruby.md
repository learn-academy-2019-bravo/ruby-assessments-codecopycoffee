# Ruby Assessments

Try your best to answer each question on your own before looking up the answer online. Once you're done writing your first answer, you can google the question and write the best answer you find.


#### 1. What is a method in Ruby? How is it different or similar to functions in JavaScript?
A method is a block of code that you can call and run multiple times that will execute a particular function or functions upon call. Ruby methods are set up in a similar way to JavaScript functions and work similarly, but the syntax is different.

#### 2. What does it mean that a class inherits from another class? Try to explain Ruby inheritance.

[Your Answer]
A child class will inherit, or automatically receive, attributes from the parent class.

[Googled Answer]
Inheritance is when a class inherits behavior from another class. The class that is inheriting behavior is called the subclass and the class it inherits from is called the superclass. We use inheritance as a way to extract common behaviors from classes that share that behavior, and move it to a superclass.
Source: https://launchschool.com/books/oo_ruby/read/inheritance

#### 3. What is rspec and what is the general process for writing tests in RSpec?

//Your Answer
RSPEC is a testing framework for ruby. The general process is to write the test, make it fail, write the code, and rerun the test (hopefully passing this time). This is called red green refactor.

//Googled Answer
RSpec is a testing tool for Ruby, created for behavior-driven development (BDD). It is the most frequently used testing library for Ruby in production applications.
Instead of always writing tests for some code we already have, we work in a red-green loop:
Write the smallest possible test case that matches what we need to program.
Run the test and watch it fail. This gets you into thinking how to write only the code that makes it pass.
Write some code with the goal of making the test pass.
Run your test suite. Repeat steps 3 and 4 until all tests pass.
Go back and refactor your new code, making it as simple and clear as possible while keeping the test suite green.
Source: https://semaphoreci.com/community/tutorials/getting-started-with-rspec

#### 4. Name three possible non-inheritance relationships between ruby objects?

//Your Answer
I have no idea.

//Googled Answer
belongs_to
a one-to-one connection with another model, such that each instance of the declaring model "belongs to" one instance of the other model

has_one
a one-to-one connection with another model, but with somewhat different semantics (and consequences). This association indicates that each instance of a model contains or possesses one instance of another model

has_many
a one-to-many connection with another model. You'll often find this association on the "other side" of a belongs_to association. This association indicates that each instance of the model has zero or more instances of another model

has_many :through
often used to set up a many-to-many connection with another model. This association indicates that the declaring model can be matched with zero or more instances of another model by proceeding through a third model

has_one :through
a one-to-one connection with another model. This association indicates that the declaring model can be matched with one instance of another model by proceeding through a third model

has_and_belongs_to_many
a direct many-to-many connection with another model, with no intervening model

Source: https://guides.rubyonrails.org/association_basics.html

#### 5. What do we call the #{} convention used below? What is it accomplishing?

```ruby
x = 1022
puts "I am printing a random number #{x}"
```

It is called string interpolation and it is the way we can combine a variable with a string so that we can output a combination of static and dynamic text to the user.

#### 6. How do you feel about testing right now? What potential pros/cons/barriers/advantages do you see to implementing BDD in your own code?

//Your Answer
I really don't like testing. Right now it feels premature and like a waste of time because I don't even know how to write actual code yet, certainly not complex code, and we're testing every step of the way by running it anyway. As far as cons/barriers, right now it just takes so long that there isn't enough time to focus on writing the actual code if I have to write tests as well. Also, sometimes the code works and the test doesn't because I wrote the test wrong, so it's not actually serving the purpose it's supposed to serve. In the future I can definitely see advantages as far as talking about it in job interviews, having tests in place to catch errors when refactoring, and being useful for writing larger programs where it's not feasible to run the entire program after each new addition.

//Googled Answer
Advantages:
For one, tests will help you avoid delivering sub-standard code. A comprehensive test suite is extremely useful when adding a new feature to ensure that any modifications that you made don't break the existing code base. Further, when refactoring or removing redundant code, tests would be there to ensure that no corner cases are being violated by your changes. Keeping code clean is incredibly important, especially for vast open source projects.
Secondly, tests help increase code stability. If each commit is tested before deploying, it would ensure that the release version is always a stable build and no users are being impacted by buggy developmental code.
Not just this, tests also supplement your development code by helping new contributors get familiar with the possible tests cases they should keep in mind while making any changes.
Source: https://www.zeolearn.com/magazine/what-is-code-testing-and-why-is-it-important

#### 7. What is an instance variable in Ruby? How is it different from a normal, local variable?

//Your Answer
Instance variables start with @. If they are used within a method in a controller, they can also be used in the view that corresponds to that controller.

//Googled Answer
An instance variable has a name beginning with @, and its scope is confined to whatever object self refers to. Two different objects, even if they belong to the same class, are allowed to have different values for their instance variables. From outside the object, instance variables cannot be altered or even observed (i.e., ruby's instance variables are never public) except by whatever methods are explicitly provided by the programmer.
Source: https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/instancevars.html

#### 8. Ruby has a great community and tons of free resources to help you learn. Here is the long list of great resources: https://www.ruby-lang.org/en/documentation/. Below are a few popular ones:
- Interactive Ruby tutorial (http://tryruby.org/levels/1/challenges/0)
- Why's (poigniant) Guide to Ruby: comics, anecdotes, and microscopic canaries (http://poignant.guide/book/chapter-1.html)
- Ruby in 20 min (https://www.ruby-lang.org/en/documentation/quickstart/)


Choose one of these resources and go through the material (not for hours, only looking for around 10min of your time) then come back here and list a few new things you learned about Ruby.

"Ancestor classes" is a way of referring to multiple generations of parent classes. If we only want to list methods defined for the current class and not inherited from the ancestor class, we can use Classname.instance_methods(false)

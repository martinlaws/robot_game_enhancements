Mock Assessment Test: iRobot
====================

## Introduction

You are programming your robot. The robot will be able to move around in two dimensional space. It will also be able to interact with various items:
* It can pick up and use weapons and even attack other robots with them.
* It can pick up and heal itself by consuming a bag of bolts.

This test is intended to take ~2hr to complete.

**Please read this document very carefully before starting.**

## RSpec

RSpec is a popular test framework for Ruby. A test framework allows us to write "test code" to test and ensure that our "actual code" functions as expected.

RSpec is a Ruby library. It's syntax/API allows us to write tests that are quite english-y to read. So even if you haven't seen or used RSpec before, the tests and expectations that it creates are fairly straight-forward to understand, because they read like english.

That said, the first few test files will be commented to explain what is being expected.

For example, you'll notice how the first spec file (`spec/01_robot_has_position_and_movement.rb`) expects the `Robot` class to be `require`d (via `require './lib/robot'`) and then using RSpec it runs a suite of position and movement related tests against that class.

If you have questions about what the test is expecting, feel free to ask.

## Your Mission

Run each set of tests (specs) _from the project's root directory_ via command line. Example: `bundle exec rspec spec/01_*.rb` to run the 1st spec.

The task will will output the results of the test and initially we will see a bunch of failing tests.

Your goal is the make all the tests pass, before proceeding onto the next step.

If you'd like to run a **specific** test (to drown out the noise), you can even add the line number. Example:

    bundle exec rspec spec/01_*.rb:34

**Steps:**

1. Read the CODE for the spec file that you ran.
2. Understand what tests it contains and what each test in that file is expecting.
3. Start implementing your code to satisfy each test.
4. Run the test suite using the same `bundle exec rspec` command, to ensure that you are seeing more and more passing tests.
5. Repeat steps 1 through 4 until all tests pass for that suite.

Once all the tests are passing for that suite, run the next suite.
Example: `bundle exec rspec spec/02_*.rb`

When you are done implementing all the code, you can simply run `bundle exec rspec spec/*.rb` to run all the tests at once, and make sure everything is working as expected.

## Marking

Even if you make all the tests pass, you may lose marks for incorrectly implementing the solution. Example: incorrect use of OOP.

This test is created such that there are indeed correct right ways to implement your app, and incorrect ways.

You can also lose marks for bad form. Some Examples of bad form include:
* Improper or confusing naming of variables, methods, etc.
* Improper indentation
* Overly verbose code that could be implemented much more simply in Ruby
* Not writing code in the "Ruby Way". Example: using camel casing for variable or method names instead of underscores.

**Note:** Hard coding the behaviour of a method to simply make the current tests pass but not actually fulfilling the goal/responsibility of the method will *not* count as a valid solution, warranting no part marks at all.

### Mark Allocation

01. 5%
02. 10%
03. 15%
04. 15%
05. 15%
06. 10%
07. 10%
08. 10%
09. 5%
10. 5%

## Other Important Notes

* Do not modify the code in the `spec` folder.
* The tests will require you to create new classes as you progress. These will need to be created in the same folder as `robot.rb`: the `lib` folder.
* You are allowed to google around.
* Please do not create a public repo nor share your work in any other way with anyone during the test.
* This test is intended to take ~2hr to complete.

## Topics covered

* How to create a class
* How to create instance variables
* How to synthesize readers/accessors (`attr_reader`, `attr_accessor`)
* How to write a method
* How to use if/else
* How to write your own `initialize` method
* How to use `super` to call a parent class' `initialize` method
* How to use inheritance to extend a class

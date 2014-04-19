[Week 4 Home](../../)

# U2.W4: Calculate the Median


## Learning Competencies
- Use tests to guide development
- Break down problems into implementable pseudocode 
- Use strings, integers, arrays, and/or hashes
- Use if/else statements, string methods, while/until loops, Enumerable#each methods


## Release 0:
Aren't you glad you've already done this in JavaScript? Now is your chance to translate your
logic into Ruby!

Write a method `median` which takes an `Array` of numbers as its input and returns the median value.

You might want to look up the definition of "median."

For example,

```ruby
median([1,2,3])      # => 2
median([4.5, 0, -1]) # => 0
median([-100, 100])  # => 0.0
```

Once you get the `Array` of numbers passing the tests, try to find the median of an array of strings. 
In this case, your method should return the word most in between the other words. 

```ruby
median(["apple","cherry","banana"])      # => "banana"
```

###1. Run the tests
In your terminal, navigate to the directory that corresponds to this challenge in your forked 
`p0_unit1_submission` repo. Type `rspec` followed by the spec file name. ex. `rspec array_total_spec.rb`
Each test should fail. Read the output in your terminal to see what is making the tests fail.


###2. Pseudocode
Based on the tests, you should have an idea of what your method(s) need(s) to accomplish.
In the pseudocode section of your `my_solution.rb` file, identify the input and output. 
Then write specific step-by-step ideas in code-like English to pass each test. 
Each line should be something you can easily translate into code. 
For help with writing pseudocode, take a look at this [pseudocode standard](http://users.csc.calpoly.edu/~jdalbey/SWE/pdl_std.html) example.

*NOTE: Make sure your pseudocode is broken down to easily implementable steps.*

###3. Initial Solution
Translate your pseudocode into code. If your pseudocode 
is not easy to implement, modify it, and re-attempt to code it. 

When you think your code should pass the first failing test, run the spec file again 
using the `rspec` command. If it passes, work on translating the next bit of pseudocode
to pass the next test. If it fails, try to figure out why it's still failing and modify
your code accordingly.

When you've passed each test, give yourself a pat on the back! Then take a break before 
trying to refactor. It's good to give your eyes a rest so they can more easily see places 
to improve.

###4. Refactored Solution
When you return to your solution. Ask yourself:
- Are the variable names you've chosen clear? (see [Tips for Naming Variables](http://www.makinggoodsoftware.com/2009/05/04/71-tips-for-naming-variables/))
- Is the code concise (but readable)? See [Code Smells](http://blog.codinghorror.com/code-smells/) FYI: When he refers to "shorter methods" think of them 
  as not necessarily short in terms of lines, but having a single thing to do. Avoid chaining too many methods together or having too much logic on one line.
- Is the code [D.R.Y](http://programmer.97things.oreilly.com/wiki/index.php/Don't_Repeat_Yourself)? 

If you can't think of a way to improve your code, write why you think it's great instead. Do not simply copy the initial solution or leave this section blank.


###5. Reflect
Include your reflection in the appropriate section in you `my_solution` file. Use the [reflection guidelines](../week_2/reflection_guidelines.md) to guide your reflection. ***NOTE: Reflections are mandatory!***

###6. Push your solution
When you feel confident with your solution, sync your changes through the GitHub desktop app with your repo on GitHub. 
If you have done this successfully, you should be able to see your new code on your repo on [github.com](https://github.com).
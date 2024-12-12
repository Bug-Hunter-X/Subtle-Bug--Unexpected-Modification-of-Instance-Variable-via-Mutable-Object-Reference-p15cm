# Subtle Ruby Bug: Unexpected Modification of Instance Variable via Mutable Object Reference

This repository demonstrates a subtle bug in Ruby related to how mutable objects (like arrays and hashes) are handled when assigned to instance variables.

## The Bug
The core issue lies in how Ruby manages references to objects.  When you assign a mutable object to an instance variable, you're not creating a copy; you're creating a reference.  Modifying the object through any reference will change the object's state everywhere it's referenced.

The `bug.rb` file contains code that showcases this issue.  Observe the unexpected behavior when modifying the array assigned to the instance variable.

## The Solution
The `bugSolution.rb` file provides a corrected version, demonstrating how to avoid this issue by creating a deep copy of the mutable object before assigning it to the instance variable.  This ensures that modifications to one copy don't affect others.

## How to Run
1. Clone the repository
2. Navigate to the repository's directory
3. Run the Ruby scripts using `ruby bug.rb` and `ruby bugSolution.rb`
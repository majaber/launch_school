Methods

* ::each
Once /each/ is done iterating, it returns the original collection.

* ::select
Evaluates the return value of the block.
Only cares about its truthiness.
Returns a new collection containing all of the selected elements,
because the selection criteria -- the blocks return value --
is truthy for every element in the array

* ::map
Uses the return value of the block to perform transformation instead
of selection
- This method finally returns what I expected [1,2,3] to return
- It fully transformed our return value
- It takes the new value and places it into a new collection
- Will /always perform transformation based on the return value/

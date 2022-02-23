### Initialization & Reassignment

On line XXXXX the local variable `XXXXX` is initialized with a reference to XXXXX object `XXXXX`, with a value of `XXXXX`.

On line XXXXX the `XXXXX` method is invoked and passed local variable `XXXXX` as an argument, pointing at XXXXX object, `XXXXX`.

On line XXXXX, local variable `XXXXX` is reassigned a reference to the XXXXX object `XXXXX`.

Lines XXXXX define a method, `XXXXX`, which takes XXXXX parameter(s), `XXXXX`. These will act as a local variable within the method body.

The block is delimited by the `do..end` keywords, and utilizes method paramater(s) `XXXXX`, which will act as a local variable within the method body.

### Invocation

On line XXXXX the `XXXXX` method is called on local variable `XXXXX`, and is passed `XXXXX` as an argument. 

On line XXXXX the `XXXXX` method is invoked.

On line XXXXX the `XXXXX` and has a reference to the XXXXX object passed to it as an argument.

The block is delimited by the `do..end` keywords, and utilizes method paramater(s) `XXXXX`, which will act as a local variable within the method body.

### Output & Return

This will output `XXXXX` and return `XXXXX`.

### Concepts

The concept which this example demonstrates is that Ruby variables act as pointers to objects in memory space.

This example demonstrates the concept of variable shadowing. As a result of the block parameter `XXXXX` having the same name as a local variable initialized at an outer scope, the reference to the `XXXXX` object `XXXXX` was not available to the `XXXXX` method, as the method was not forced to look outside of its own scope. This can be avoided by renaming the block parameter and by thinking carefully about variable names.

This is an example of variable scoping rules within Ruby. A variable initialized at an outer scope is available at an inner scope, but a variable initialized within an inner scope will not be available at scopes outside of the one within which it was initialized.

This is an example of variable scoping rules within a method block. Variables initialized outside of the block will have their references available within the block, but those initialized within the block will not be available for reference outside of it.

This is a demonstration of passing an object reference within Ruby, with a narrower focus on method definitions. The method `XXXXX` takes a paramater `XXXXX`. When the method is called with an argument of `XXXXX`, the reference to the XXXXX object is passed to the method parameter `XXXXX` as an argument, and is utilized within the method body. 

This demonstrates string interpolation. Within the string, `#{}` creates a space where Ruby code can be parsed and therefore the reference to XXXXX object, `XXXXX`, will have its return value inserted within the string.

This is an illustration of the concept of mutation. When using a destructive method such as `XXXXX`, the object `XXXXX` is altered, while any references to the object are preserved. As such, references pointing to the object will now be pointing to the altered value.

This is an illustration of truthiness and falsiness in Ruby. In Ruby, all values that are not `false` or `nil` evaluate to `true` while simultaneously not being equal to `true`. This is what is meant by truthiness. The return value of the `select` method is as described as a result of this concept, because the `select` method uses any block return value which is truthy to select elements of its calling collection, and returns these in a new Array.

This is an illustration of iteration within Ruby. The `each` method utilizes its block and block parameter(s) to execute the block for each element of its calling collection. Though the block code can potentially be used to transform or reassign variables during iteration, the `each` method itself returns its calling object.

This demonstrates the concept of transformation using `map`. `map` utilizes its block and block parameter to return a value, and then it uses this value to return a new Array, with each element being the value which was returned for the corresponding object in the calling collection.

The `any?` method iterates through the collection it was called on to execute a block as defined by the `do..end` keywords, assigning each element to be referenced by its block parameter in turn. If the block for any of the elements in the calling collection returns a truthy value, the `any?` method will return the Boolean value `true`. If no elements return a truthy value, the `any?` method will return `false.`

The `all?` method iterates through the collection it was called on to execute a block as defined by the `do..end` keywords, assigning each element to be referenced by its block parameter in turn. If the block for all of the elements in the calling collection returns a truthy value, the `all?` method will return the Boolean value `true`. If any elements return a falsey value, the `all?` method will return `false.`
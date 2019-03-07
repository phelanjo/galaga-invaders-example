=begin
Reflecting on Principle
1) How are Ruby modules (and similar features from other langs)
   different from a class, in their purpose?
   - Ruby modules act as method libraries for common classes.
   - Modules cannot be instantiated.
   - Modules are another type of inheritance.
2) What is LSP?
  Liskov Substitution Principle, The "L" in Solid. This principle states that
  any subtypes must be substitutable for their supertypes.
3) Briefly describe how the template method pattern works.
  You define a basic structure in the superclass (Metz used a couple default
  value methods in her superclass) and send messages to acquire those values
  from its subclasses.

  Side notes:
    - I think destroyable/drawable (possibly hittable) could be modules. I'm
    lost on how to implement them. Specifically, what methods go in those
    modules. I don't think I grasped this chapter as much as the last one.

    - I tried to clean up the 'super' smell in each subclass by using Metz'
    post_initialize technique from chapter 6.
=end

# Bison and Flex to parse NEC2 syntax 

I would like to create a Pre-Processor for NEC2 syntax - this has been done already using 4nec2, but this only works on Windows. I would like a Mac/Linux command line version.

## SYNTAX SY Card 

4nec2 uses a SYNTAX of 

    SY VARIABLE = VALUE    Comment 

Whilst this seems simple so for height we often have 

    SY Z = 10.21    Max Height 

We can also have 

    SY Wire = #14 

# What are we trying to accomplish ?

Aegnec2 does not understand the SY Card, so I would like to run a pre-processor - that replaces the VARIABLE wih the Value in the NEC file. 

This would be easy (I think to do in Python), but I was keen to try and see how to do this using a compiler type processing flow. 

## What would the next steps be ?

Once we have a variable that we can replace, we can then automatically vary some of these, and see what the effect on the results will be. Essentially we can have an evolve/tune/optimize function.

I think this will all need to be wrapped in a QT interface, but that will be another branch. 

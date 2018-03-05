#!/usr/bin/env python3

# NOTES: Python uses a kind of variables called "object references".
# These structures refers to certain object if it has been created
# previously or otherwise the object is created with “=” operator.

a = "String 1"
print(a)
print(a[0])
print(type(a))

# Refernce a to a new object, at this point Python uses "dynamic
# typing" it means "str" to "integer".
a = 30

# At this point the garbage collector should free "String 1" value.
print(a)
print(type(a))

# "tuple" and "list" are collection data types. They allows to hold
# any number of data items. The difference between the is:
#
# Tuples -> Inmmmutable (once created, they cannot be changed)
# Lists  -> Mutable (it is possible to insert/remove whatever moment).

#  The tuples are created using commas (,)
t = "one", "two", "three"
print(t)
print(type(t))

# The lists are created with "[ ]"
l = ["one", "two", "three"]
print(l)
print(type(l))

# Get the length of an item
print(len(t))
print(len(l))
print(len("example"))

# The difference between objects and a plain items of data is that
# objects can have "methods".
l.append("four")
print(l)

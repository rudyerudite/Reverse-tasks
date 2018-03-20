from z3 import *

x=Real('x')
y=Real('y')

a=int(input())
b=int(input())
c=int(input())
s=Solver()

s.add(b==x+y)
s.add(c==x*y)
print(s.check())
print(s.model())


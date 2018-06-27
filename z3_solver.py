from z3 import *

x=BitVec('x',35)
y=BitVec('y',35)
s1=BitVec('s1',35)
s2=BitVec('s2',35)
s1=input()
s2=input()

s=Solver()

p=4646704883

a=(2*x+3)%p
b=(3*y+9)%p

s.add(s1==a^b)
s.add(s2==((2*a+3)%p)^((3*b+9)%p))
s.add(x>=0)
s.add(y>=0)
s.add(x<4646704883)
s.add(y<4646704883)

while(s.check()==sat):
	m=s.model()
	print(m[x])
	print(m[y])
	s.add(Or(x!=m[x],y!=m[y]))

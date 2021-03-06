from z3 import * 

'''
; add eax, ecx
; shl eax, 0xc
; mul ecx
; mov edx, eax
; xor edx, ecx
'''

s = z3.Solver()

eax = z3.BitVec('eax', 32)
ecx = z3.BitVec('ecx', 32)
eax1, eax2, eax3 = z3.BitVecs('eax1 eax2 eax3',32)

edx1,edx2 = z3.BitVecs('edx1 edx2',32)
model = [eax1==eax+ecx,eax2==eax1<<z3.BitVec(12,32), eax3==eax2*ecx, edx1==eax3,edx2==edx1^eax]
print(model)
s.add(model)
print(s.check())

requirement = edx2==z3.BitVecVal(0x100,32)
s.add(requirement)
print(s.check())
eax_val = s.model()[eax].as_long()
print(hex(eax_val))

solution = [('eax','ecx')]

while(s.check()==z3.sat):
	m = s.model()
	eax_val = m[eax]
	ecx_val = m[ecx]
	requirement_eax = eax!= m[eax]
	requirement_ecx = ecx!= m[ecx]
	s.add(requirement_eax)
	s.add(requirement_eax)
	solution.append(m[eax])
	solution.append(m[ecx])
	print(m)

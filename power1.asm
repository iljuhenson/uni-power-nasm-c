section .text use32

global	_power

_power:

	%idefine	a	[ebp+8]
	%idefine	b	[ebp+12]

	push	ebp
	mov	ebp, esp

	finit
	fld dword b
    fld dword a
    fyl2x
    fld     st0
    frndint
    fsub    st1,st0
    fxch    st1
    f2xm1
    fld1
    fadd
    fscale

	leave
	
	ret
section .text use32

global	_power

_power:

	%idefine	a	[ebp+8]
	%idefine	b	[ebp+12]

	push	ebp
	mov	ebp, esp

	finit
    fld dword a
	fld1
	mov ecx, b
 
	cmp ecx, 0
	jg my_loop_positive
	je my_loop_zero
	neg ecx
	
	jmp my_loop_negative
	
my_loop_positive:
	fmul st1

	loop my_loop_positive
	
	jmp ending

my_loop_negative:
	fdiv st1

	loop my_loop_negative
	
	jmp ending

my_loop_zero:
	fld

	jmp ending

ending:
	leave
	
	ret
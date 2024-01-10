section .text use32

global	_power

_power:

	%idefine	a	[ebp+8] ; dyrektywa definiujaca stala
	%idefine	b	[ebp+12]

	push	ebp
	mov	ebp, esp

	finit
    fld dword a
	fld1
	mov ecx, dword b

my_loop:
	fmul st1

	loop my_loop
	
	leave
	
	ret
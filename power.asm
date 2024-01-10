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
 
	
my_loop:
	fmul st1


	loop my_loop
	; fstp dword [esp]
	; ; pop eax
	; ; mov eax, dword b

	leave
	
	ret
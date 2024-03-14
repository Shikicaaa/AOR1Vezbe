.386
.model flat, c
.stack 4096

.data
	x dw 38
	y dw 2
	z dw 3

.code
main proc
	xor eax, eax
	xor ebx,ebx
	xor ecx,ecx
	xor edx,edx
	;radi zadatak
	petlja1:
		;racuna x
		mov bx, y ;prebacuje y u dx
		dec bx ;(y-1)
		mov ax, x ;prebacuje x u ax
		mul bx ;dx:ax = x*(y-1)
		add ax, 10; 10+x*(y-1)
		mov cx, z; u cx ubacuje z
		add bx, cx; z + y - 1
		div bx
		xor dx,dx
		div bx; deli ga na kvadrat
		cmp ax, 0; da li je ax = 0? odnosno X = ?
		je kraj
		;racuna y
		mov bx, y
		shr bx, 1
		inc bx; Y/2 + 1
		cmp bx, 1
		jbe kraj
		mov x, ax
		mov y, bx
		jmp petlja1
	kraj:
		

main endp
end main
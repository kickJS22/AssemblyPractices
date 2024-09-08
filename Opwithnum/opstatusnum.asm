global _start
_start:
				mov ebx, 100 ; Assign 100 to ebx
				mov eax, ebx ; Assing ebx to eax
				mov edx, 10 ; Assign 10 edx
				add edx, ebx ; edx += ebx, 110
				sub edx, eax ; edx -= eax, 10
				mul edx ; eax *= edx, 1000
				div edx ; eax /= edx, 10, mul and div will always be directed automatically to eax
				int 0x80

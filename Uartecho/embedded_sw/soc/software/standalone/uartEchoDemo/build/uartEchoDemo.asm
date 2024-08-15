
build/uartEchoDemo.elf:     file format elf32-littleriscv


Disassembly of section .init:

f9000000 <_start>:
f9000000:	00001197          	auipc	gp,0x1
f9000004:	c5818193          	addi	gp,gp,-936 # f9000c58 <__global_pointer$>

f9000008 <init>:
f9000008:	a2818113          	addi	sp,gp,-1496 # f9000680 <__freertos_irq_stack_top>
f900000c:	00000517          	auipc	a0,0x0
f9000010:	38850513          	addi	a0,a0,904 # f9000394 <_data>
f9000014:	00000597          	auipc	a1,0x0
f9000018:	38058593          	addi	a1,a1,896 # f9000394 <_data>
f900001c:	81c18613          	addi	a2,gp,-2020 # f9000474 <__bss_start>
f9000020:	00c5fc63          	bgeu	a1,a2,f9000038 <init+0x30>
f9000024:	00052283          	lw	t0,0(a0)
f9000028:	0055a023          	sw	t0,0(a1)
f900002c:	00450513          	addi	a0,a0,4
f9000030:	00458593          	addi	a1,a1,4
f9000034:	fec5e8e3          	bltu	a1,a2,f9000024 <init+0x1c>
f9000038:	81c18513          	addi	a0,gp,-2020 # f9000474 <__bss_start>
f900003c:	82018593          	addi	a1,gp,-2016 # f9000478 <_end>
f9000040:	00b57863          	bgeu	a0,a1,f9000050 <init+0x48>
f9000044:	00052023          	sw	zero,0(a0)
f9000048:	00450513          	addi	a0,a0,4
f900004c:	feb56ce3          	bltu	a0,a1,f9000044 <init+0x3c>
f9000050:	010000ef          	jal	ra,f9000060 <__libc_init_array>
f9000054:	0a0000ef          	jal	ra,f90000f4 <main>

f9000058 <mainDone>:
f9000058:	0000006f          	j	f9000058 <mainDone>

f900005c <_init>:
f900005c:	00008067          	ret

Disassembly of section .text:

f9000060 <__libc_init_array>:
f9000060:	ff010113          	addi	sp,sp,-16
f9000064:	00812423          	sw	s0,8(sp)
f9000068:	01212023          	sw	s2,0(sp)
f900006c:	00000417          	auipc	s0,0x0
f9000070:	32840413          	addi	s0,s0,808 # f9000394 <_data>
f9000074:	00000917          	auipc	s2,0x0
f9000078:	32090913          	addi	s2,s2,800 # f9000394 <_data>
f900007c:	40890933          	sub	s2,s2,s0
f9000080:	00112623          	sw	ra,12(sp)
f9000084:	00912223          	sw	s1,4(sp)
f9000088:	40295913          	srai	s2,s2,0x2
f900008c:	00090e63          	beqz	s2,f90000a8 <__libc_init_array+0x48>
f9000090:	00000493          	li	s1,0
f9000094:	00042783          	lw	a5,0(s0)
f9000098:	00148493          	addi	s1,s1,1
f900009c:	00440413          	addi	s0,s0,4
f90000a0:	000780e7          	jalr	a5
f90000a4:	fe9918e3          	bne	s2,s1,f9000094 <__libc_init_array+0x34>
f90000a8:	00000417          	auipc	s0,0x0
f90000ac:	2ec40413          	addi	s0,s0,748 # f9000394 <_data>
f90000b0:	00000917          	auipc	s2,0x0
f90000b4:	2e490913          	addi	s2,s2,740 # f9000394 <_data>
f90000b8:	40890933          	sub	s2,s2,s0
f90000bc:	40295913          	srai	s2,s2,0x2
f90000c0:	00090e63          	beqz	s2,f90000dc <__libc_init_array+0x7c>
f90000c4:	00000493          	li	s1,0
f90000c8:	00042783          	lw	a5,0(s0)
f90000cc:	00148493          	addi	s1,s1,1
f90000d0:	00440413          	addi	s0,s0,4
f90000d4:	000780e7          	jalr	a5
f90000d8:	fe9918e3          	bne	s2,s1,f90000c8 <__libc_init_array+0x68>
f90000dc:	00c12083          	lw	ra,12(sp)
f90000e0:	00812403          	lw	s0,8(sp)
f90000e4:	00412483          	lw	s1,4(sp)
f90000e8:	00012903          	lw	s2,0(sp)
f90000ec:	01010113          	addi	sp,sp,16
f90000f0:	00008067          	ret

f90000f4 <main>:
f90000f4:	f9000537          	lui	a0,0xf9000
f90000f8:	ff010113          	addi	sp,sp,-16
f90000fc:	40850513          	addi	a0,a0,1032 # f9000408 <__global_pointer$+0xfffff7b0>
f9000100:	00112623          	sw	ra,12(sp)
f9000104:	00812423          	sw	s0,8(sp)
f9000108:	00912223          	sw	s1,4(sp)
f900010c:	060000ef          	jal	ra,f900016c <bsp_printf>
f9000110:	f9000537          	lui	a0,0xf9000
f9000114:	41c50513          	addi	a0,a0,1052 # f900041c <__global_pointer$+0xfffff7c4>
f9000118:	054000ef          	jal	ra,f900016c <bsp_printf>
f900011c:	f8010437          	lui	s0,0xf8010
f9000120:	f90004b7          	lui	s1,0xf9000
f9000124:	00442783          	lw	a5,4(s0) # f8010004 <__global_pointer$+0xff00f3ac>
f9000128:	0187d793          	srli	a5,a5,0x18
f900012c:	fe078ce3          	beqz	a5,f9000124 <main+0x30>
f9000130:	00442783          	lw	a5,4(s0)
f9000134:	0187d793          	srli	a5,a5,0x18
f9000138:	fe078ce3          	beqz	a5,f9000130 <main+0x3c>
f900013c:	00042583          	lw	a1,0(s0)
f9000140:	45048513          	addi	a0,s1,1104 # f9000450 <__global_pointer$+0xfffff7f8>
f9000144:	0ff5f593          	andi	a1,a1,255
f9000148:	024000ef          	jal	ra,f900016c <bsp_printf>
f900014c:	fd9ff06f          	j	f9000124 <main+0x30>

f9000150 <_putchar>:
f9000150:	f8010737          	lui	a4,0xf8010
f9000154:	00472783          	lw	a5,4(a4) # f8010004 <__global_pointer$+0xff00f3ac>
f9000158:	0107d793          	srli	a5,a5,0x10
f900015c:	0ff7f793          	andi	a5,a5,255
f9000160:	fe078ae3          	beqz	a5,f9000154 <_putchar+0x4>
f9000164:	00a72023          	sw	a0,0(a4)
f9000168:	00008067          	ret

f900016c <bsp_printf>:
f900016c:	f8010113          	addi	sp,sp,-128
f9000170:	05312623          	sw	s3,76(sp)
f9000174:	05412423          	sw	s4,72(sp)
f9000178:	06f12a23          	sw	a5,116(sp)
f900017c:	f90009b7          	lui	s3,0xf9000
f9000180:	06410793          	addi	a5,sp,100
f9000184:	f9000a37          	lui	s4,0xf9000
f9000188:	05212823          	sw	s2,80(sp)
f900018c:	05512223          	sw	s5,68(sp)
f9000190:	05612023          	sw	s6,64(sp)
f9000194:	03712e23          	sw	s7,60(sp)
f9000198:	03812c23          	sw	s8,56(sp)
f900019c:	04112e23          	sw	ra,92(sp)
f90001a0:	04812c23          	sw	s0,88(sp)
f90001a4:	04912a23          	sw	s1,84(sp)
f90001a8:	03912a23          	sw	s9,52(sp)
f90001ac:	00050a93          	mv	s5,a0
f90001b0:	06b12223          	sw	a1,100(sp)
f90001b4:	06c12423          	sw	a2,104(sp)
f90001b8:	06d12623          	sw	a3,108(sp)
f90001bc:	06e12823          	sw	a4,112(sp)
f90001c0:	07012c23          	sw	a6,120(sp)
f90001c4:	07112e23          	sw	a7,124(sp)
f90001c8:	00f12623          	sw	a5,12(sp)
f90001cc:	00000913          	li	s2,0
f90001d0:	02500b13          	li	s6,37
f90001d4:	06300b93          	li	s7,99
f90001d8:	f9000c37          	lui	s8,0xf9000
f90001dc:	3e098993          	addi	s3,s3,992 # f90003e0 <__global_pointer$+0xfffff788>
f90001e0:	3f4a0a13          	addi	s4,s4,1012 # f90003f4 <__global_pointer$+0xfffff79c>
f90001e4:	012a87b3          	add	a5,s5,s2
f90001e8:	0007c503          	lbu	a0,0(a5)
f90001ec:	02051c63          	bnez	a0,f9000224 <bsp_printf+0xb8>
f90001f0:	05c12083          	lw	ra,92(sp)
f90001f4:	05812403          	lw	s0,88(sp)
f90001f8:	05412483          	lw	s1,84(sp)
f90001fc:	05012903          	lw	s2,80(sp)
f9000200:	04c12983          	lw	s3,76(sp)
f9000204:	04812a03          	lw	s4,72(sp)
f9000208:	04412a83          	lw	s5,68(sp)
f900020c:	04012b03          	lw	s6,64(sp)
f9000210:	03c12b83          	lw	s7,60(sp)
f9000214:	03812c03          	lw	s8,56(sp)
f9000218:	03412c83          	lw	s9,52(sp)
f900021c:	08010113          	addi	sp,sp,128
f9000220:	00008067          	ret
f9000224:	03651e63          	bne	a0,s6,f9000260 <bsp_printf+0xf4>
f9000228:	07300713          	li	a4,115
f900022c:	06400693          	li	a3,100
f9000230:	05800613          	li	a2,88
f9000234:	07800593          	li	a1,120
f9000238:	06600513          	li	a0,102
f900023c:	00190913          	addi	s2,s2,1
f9000240:	012a87b3          	add	a5,s5,s2
f9000244:	0007c783          	lbu	a5,0(a5)
f9000248:	02078e63          	beqz	a5,f9000284 <bsp_printf+0x118>
f900024c:	01779e63          	bne	a5,s7,f9000268 <bsp_printf+0xfc>
f9000250:	00c12783          	lw	a5,12(sp)
f9000254:	0007c503          	lbu	a0,0(a5)
f9000258:	00478713          	addi	a4,a5,4
f900025c:	00e12623          	sw	a4,12(sp)
f9000260:	ef1ff0ef          	jal	ra,f9000150 <_putchar>
f9000264:	0200006f          	j	f9000284 <bsp_printf+0x118>
f9000268:	02e79863          	bne	a5,a4,f9000298 <bsp_printf+0x12c>
f900026c:	00c12783          	lw	a5,12(sp)
f9000270:	0007a403          	lw	s0,0(a5)
f9000274:	00478713          	addi	a4,a5,4
f9000278:	00e12623          	sw	a4,12(sp)
f900027c:	00044503          	lbu	a0,0(s0)
f9000280:	00051663          	bnez	a0,f900028c <bsp_printf+0x120>
f9000284:	00190913          	addi	s2,s2,1
f9000288:	f5dff06f          	j	f90001e4 <bsp_printf+0x78>
f900028c:	00140413          	addi	s0,s0,1
f9000290:	ec1ff0ef          	jal	ra,f9000150 <_putchar>
f9000294:	fe9ff06f          	j	f900027c <bsp_printf+0x110>
f9000298:	06d79263          	bne	a5,a3,f90002fc <bsp_printf+0x190>
f900029c:	00c12783          	lw	a5,12(sp)
f90002a0:	0007a483          	lw	s1,0(a5)
f90002a4:	00478713          	addi	a4,a5,4
f90002a8:	00e12623          	sw	a4,12(sp)
f90002ac:	0004d863          	bgez	s1,f90002bc <bsp_printf+0x150>
f90002b0:	02d00513          	li	a0,45
f90002b4:	e9dff0ef          	jal	ra,f9000150 <_putchar>
f90002b8:	409004b3          	neg	s1,s1
f90002bc:	01010413          	addi	s0,sp,16
f90002c0:	00040c93          	mv	s9,s0
f90002c4:	00a00713          	li	a4,10
f90002c8:	00049e63          	bnez	s1,f90002e4 <bsp_printf+0x178>
f90002cc:	01940c63          	beq	s0,s9,f90002e4 <bsp_printf+0x178>
f90002d0:	fff40413          	addi	s0,s0,-1
f90002d4:	00044503          	lbu	a0,0(s0)
f90002d8:	e79ff0ef          	jal	ra,f9000150 <_putchar>
f90002dc:	ff941ae3          	bne	s0,s9,f90002d0 <bsp_printf+0x164>
f90002e0:	fa5ff06f          	j	f9000284 <bsp_printf+0x118>
f90002e4:	02e4e7b3          	rem	a5,s1,a4
f90002e8:	00140413          	addi	s0,s0,1
f90002ec:	03078793          	addi	a5,a5,48
f90002f0:	fef40fa3          	sb	a5,-1(s0)
f90002f4:	02e4c4b3          	div	s1,s1,a4
f90002f8:	fd1ff06f          	j	f90002c8 <bsp_printf+0x15c>
f90002fc:	02c79e63          	bne	a5,a2,f9000338 <bsp_printf+0x1cc>
f9000300:	00c12783          	lw	a5,12(sp)
f9000304:	01c00413          	li	s0,28
f9000308:	ffc00493          	li	s1,-4
f900030c:	0007ac83          	lw	s9,0(a5)
f9000310:	00478713          	addi	a4,a5,4
f9000314:	00e12623          	sw	a4,12(sp)
f9000318:	008cd7b3          	srl	a5,s9,s0
f900031c:	00f7f793          	andi	a5,a5,15
f9000320:	00fa07b3          	add	a5,s4,a5
f9000324:	0007c503          	lbu	a0,0(a5)
f9000328:	ffc40413          	addi	s0,s0,-4
f900032c:	e25ff0ef          	jal	ra,f9000150 <_putchar>
f9000330:	fe9414e3          	bne	s0,s1,f9000318 <bsp_printf+0x1ac>
f9000334:	f51ff06f          	j	f9000284 <bsp_printf+0x118>
f9000338:	02b79e63          	bne	a5,a1,f9000374 <bsp_printf+0x208>
f900033c:	00c12783          	lw	a5,12(sp)
f9000340:	01c00413          	li	s0,28
f9000344:	ffc00493          	li	s1,-4
f9000348:	0007ac83          	lw	s9,0(a5)
f900034c:	00478713          	addi	a4,a5,4
f9000350:	00e12623          	sw	a4,12(sp)
f9000354:	008cd7b3          	srl	a5,s9,s0
f9000358:	00f7f793          	andi	a5,a5,15
f900035c:	00f987b3          	add	a5,s3,a5
f9000360:	0007c503          	lbu	a0,0(a5)
f9000364:	ffc40413          	addi	s0,s0,-4
f9000368:	de9ff0ef          	jal	ra,f9000150 <_putchar>
f900036c:	fe9414e3          	bne	s0,s1,f9000354 <bsp_printf+0x1e8>
f9000370:	f15ff06f          	j	f9000284 <bsp_printf+0x118>
f9000374:	eca794e3          	bne	a5,a0,f900023c <bsp_printf+0xd0>
f9000378:	394c0413          	addi	s0,s8,916 # f9000394 <__global_pointer$+0xfffff73c>
f900037c:	00c0006f          	j	f9000388 <bsp_printf+0x21c>
f9000380:	00140413          	addi	s0,s0,1
f9000384:	dcdff0ef          	jal	ra,f9000150 <_putchar>
f9000388:	00044503          	lbu	a0,0(s0)
f900038c:	fe051ae3          	bnez	a0,f9000380 <bsp_printf+0x214>
f9000390:	ef5ff06f          	j	f9000284 <bsp_printf+0x118>

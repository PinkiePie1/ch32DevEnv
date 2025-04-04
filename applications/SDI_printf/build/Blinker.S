
build/Blinker.elf:     file format elf32-littleriscv
build/Blinker.elf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000

Program Header:
0x70000003 off    0x000030a7 vaddr 0x00000000 paddr 0x00000000 align 2**0
         filesz 0x0000003a memsz 0x00000000 flags r--
    LOAD off    0x00001000 vaddr 0x00000000 paddr 0x00000000 align 2**12
         filesz 0x00001844 memsz 0x00001844 flags r-x
    LOAD off    0x00003000 vaddr 0x20000000 paddr 0x00001844 align 2**12
         filesz 0x00000074 memsz 0x00000094 flags rw-
    LOAD off    0x00000800 vaddr 0x20004800 paddr 0x20004800 align 2**12
         filesz 0x00000000 memsz 0x00000800 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .init         00000004  00000000  00000000  00001000  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .vector       000000fc  00000004  00000004  00001004  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .text         00001744  00000100  00000100  00001100  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .fini         00000000  00001844  00001844  00003074  2**0
                  CONTENTS, ALLOC, LOAD, CODE
  4 .dalign       00000000  20000000  20000000  00003074  2**0
                  CONTENTS
  5 .dlalign      00000000  00001844  00001844  00003074  2**0
                  CONTENTS
  6 .data         00000074  20000000  00001844  00003000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .bss          00000020  20000074  000018b8  00003074  2**2
                  ALLOC
  8 .stack        00000800  20004800  20004800  00003800  2**0
                  ALLOC
  9 .comment      00000033  00000000  00000000  00003074  2**0
                  CONTENTS, READONLY
 10 .riscv.attributes 0000003a  00000000  00000000  000030a7  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
00000000 l    d  .init	00000000 .init
00000004 l    d  .vector	00000000 .vector
00000100 l    d  .text	00000000 .text
00001844 l    d  .fini	00000000 .fini
20000000 l    d  .dalign	00000000 .dalign
00001844 l    d  .dlalign	00000000 .dlalign
20000000 l    d  .data	00000000 .data
20000074 l    d  .bss	00000000 .bss
20004800 l    d  .stack	00000000 .stack
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .riscv.attributes	00000000 .riscv.attributes
00000000 l    df *ABS*	00000000 startup_ch32v20x_D6.o
00000004 l       .vector	00000000 _vector_base
00000000 l    df *ABS*	00000000 lib_a-memset.o
00000000 l    df *ABS*	00000000 save-restore.o
00000000 l    df *ABS*	00000000 debug.c
20000076 l     O .bss	00000001 p_us
20000074 l     O .bss	00000002 p_ms
20000060 l     O .data	00000004 curbrk.0
00000000 l    df *ABS*	00000000 ch32v20x_gpio.c
00000000 l    df *ABS*	00000000 ch32v20x_misc.c
00000000 l    df *ABS*	00000000 ch32v20x_rcc.c
00000000 l    df *ABS*	00000000 ch32v20x_it.c
00000000 l    df *ABS*	00000000 main.c
00000000 l    df *ABS*	00000000 system_ch32v20x.c
00000000 l    df *ABS*	00000000 lib_a-printf.o
00000000 l    df *ABS*	00000000 lib_a-findfp.o
000005ba l     F .text	00000064 std
00000000 l    df *ABS*	00000000 lib_a-fwalk.o
00000000 l    df *ABS*	00000000 lib_a-lock.o
00000000 l    df *ABS*	00000000 lib_a-nano-mallocr.o
000007fe l     F .text	00000054 sbrk_aligned
00000000 l    df *ABS*	00000000 lib_a-nano-vfprintf.o
00000960 l     F .text	00000026 __sfputc_r
00000000 l    df *ABS*	00000000 lib_a-sbrkr.o
00000000 l    df *ABS*	00000000 lib_a-stdio.o
00000000 l    df *ABS*	00000000 lib_a-wbuf.o
00000000 l    df *ABS*	00000000 lib_a-writer.o
00000000 l    df *ABS*	00000000 lib_a-wsetup.o
00000000 l    df *ABS*	00000000 lib_a-closer.o
00000000 l    df *ABS*	00000000 lib_a-fflush.o
00000000 l    df *ABS*	00000000 lib_a-lseekr.o
00000000 l    df *ABS*	00000000 lib_a-makebuf.o
00000000 l    df *ABS*	00000000 lib_a-memchr.o
00000000 l    df *ABS*	00000000 lib_a-mlock.o
00000000 l    df *ABS*	00000000 lib_a-nano-freer.o
00000000 l    df *ABS*	00000000 lib_a-nano-vfprintf_i.o
00000000 l    df *ABS*	00000000 lib_a-readr.o
00000000 l    df *ABS*	00000000 lib_a-fstatr.o
00000000 l    df *ABS*	00000000 lib_a-isattyr.o
00000000 l    df *ABS*	00000000 close.o
00000000 l    df *ABS*	00000000 fstat.o
00000000 l    df *ABS*	00000000 isatty.o
00000000 l    df *ABS*	00000000 lseek.o
00000000 l    df *ABS*	00000000 read.o
00000000 l    df *ABS*	00000000 lib_a-impure.o
20000000 l     O .data	00000060 impure_data
000004fa  w      .text	00000000 EXTI2_IRQHandler
000016c8 g     F .text	00000026 _isatty_r
00001112 g     F .text	0000002a _lseek_r
00000582 g     F .text	00000038 printf
20000860 g       .data	00000000 __global_pointer$
00000118 g     F .text	00000028 .hidden __riscv_save_8
000004fa  w      .text	00000000 TIM1_CC_IRQHandler
00000d1c g     F .text	00000030 __sseek
00000684 g     F .text	00000068 __sinit
00000d52 g     F .text	000000be __swbuf_r
00000392 g     F .text	00000010 HardFault_Handler
00000628 g     F .text	00000044 __sfmoreglue
00001248 g     F .text	00000008 __malloc_unlock
00000164 g     F .text	0000000c .hidden __riscv_restore_3
000004fa  w      .text	00000000 SysTick_Handler
000004fa  w      .text	00000000 PVD_IRQHandler
00000150 g     F .text	00000020 .hidden __riscv_restore_10
00000390 g     F .text	00000002 NMI_Handler
000004fa  w      .text	00000000 EXTI3_IRQHandler
00000118 g     F .text	00000028 .hidden __riscv_save_11
000016a0 g     F .text	00000028 _fstat_r
20000090 g     O .bss	00000004 errno
20000074 g       .bss	00000000 _sbss
00000800 g       *ABS*	00000000 __stack_size
000004fa  w      .text	00000000 USBFS_IRQHandler
00000164 g     F .text	0000000c .hidden __riscv_restore_2
0000061e g     F .text	0000000a _cleanup_r
000004fa  w      .text	00000000 EXTI0_IRQHandler
000004fa  w      .text	00000000 I2C2_EV_IRQHandler
20000064 g     O .data	00000004 SystemCoreClock
000016fa g     F .text	0000000c _fstat
00000004 g       .init	00000000 _einit
00000372 g     F .text	0000001e RCC_APB2PeriphClockCmd
00000110 g     F .text	00000030 .hidden __riscv_save_12
000004fa  w      .text	00000000 ADC1_2_IRQHandler
0000027e g     F .text	000000ee GPIO_Init
000004fa  w      .text	00000000 Break_Point_Handler
00000150 g     F .text	00000020 .hidden __riscv_restore_11
20000078 g     O .bss	00000004 NVIC_Priority_Group
000004fa  w      .text	00000000 SPI1_IRQHandler
00000c7e g     F .text	00000028 _sbrk_r
000004fa  w      .text	00000000 TAMPER_IRQHandler
00000140 g     F .text	0000000c .hidden __riscv_save_1
00000164 g     F .text	0000000c .hidden __riscv_restore_0
00001676 g     F .text	0000002a _read_r
00000126 g     F .text	0000001a .hidden __riscv_save_7
000004fa  w      .text	00000000 Ecall_M_Mode_Handler
20004800 g       .stack	00000000 _heap_end
00001706 g     F .text	0000000c _isatty
20000084 g     O .bss	00000001 __lock___sinit_recursive_mutex
20000070 g     O .data	00000004 _global_impure_ptr
0000015a g     F .text	00000016 .hidden __riscv_restore_5
000004fa  w      .text	00000000 DMA1_Channel4_IRQHandler
00000254 g     F .text	0000002a _sbrk
0000015a g     F .text	00000016 .hidden __riscv_restore_6
000004fa  w      .text	00000000 USART3_IRQHandler
000004fa  w      .text	00000000 RTC_IRQHandler
20000094 g       .bss	00000000 _ebss
000004fa  w      .text	00000000 DMA1_Channel7_IRQHandler
000004fa  w      .text	00000000 CAN1_RX1_IRQHandler
00000170 g     F .text	0000002a Delay_Init
2000007c g     O .bss	00000001 __lock___malloc_recursive_mutex
000004fa  w      .text	00000000 TIM4_IRQHandler
00000118 g     F .text	00000028 .hidden __riscv_save_9
00001750 g     O .text	00000020 __sf_fake_stderr
00000126 g     F .text	0000001a .hidden __riscv_save_4
000004fa  w      .text	00000000 I2C1_EV_IRQHandler
000003a2 g     F .text	0000002e GPIO_Toggle_INIT
000007fc g     F .text	00000002 __retarget_lock_release_recursive
000004fa  w      .text	00000000 DMA1_Channel6_IRQHandler
00000986 g     F .text	00000040 __sfputs_r
000004fa  w      .text	00000000 UART4_IRQHandler
0000066c g     F .text	00000006 __sfp_lock_acquire
00001228 g     F .text	00000018 memchr
00001250 g     F .text	0000009e _free_r
000004fa  w      .text	00000000 TIM3_IRQHandler
000004fa  w      .text	00000000 RCC_IRQHandler
00000140 g     F .text	0000000c .hidden __riscv_save_3
000004fa  w      .text	00000000 TIM1_TRG_COM_IRQHandler
000004fa  w      .text	00000000 DMA1_Channel1_IRQHandler
00000000 g       .init	00000000 _start
00001712 g     F .text	0000000c _lseek
000004fa  w      .text	00000000 EXTI15_10_IRQHandler
000004fa  w      .text	00000000 DMA1_Channel8_IRQHandler
00000f2c g     F .text	00000028 _close_r
20000000 g       .dalign	00000000 _data_vma
20000077 g     O .bss	00000001 MCU_Version
00000e3c g     F .text	000000f0 __swsetup_r
000004fa  w      .text	00000000 EXTI9_5_IRQHandler
000006ec g     F .text	000000a4 __sfp
0000067e g     F .text	00000006 __sinit_lock_release
00000118 g     F .text	00000028 .hidden __riscv_save_10
00000ca6 g     F .text	0000002e __sread
00001240 g     F .text	00000008 __malloc_lock
0000015a g     F .text	00000016 .hidden __riscv_restore_4
00000150 g     F .text	00000020 .hidden __riscv_restore_8
00001086 g     F .text	0000008c _fflush_r
00000126 g     F .text	0000001a .hidden __riscv_save_6
000004fa  w      .text	00000000 SPI2_IRQHandler
00001790 g     O .text	00000020 __sf_fake_stdin
000007fa g     F .text	00000002 __retarget_lock_acquire_recursive
00000100 g     F .text	00000010 memset
00000150 g     F .text	00000020 .hidden __riscv_restore_9
0000015a g     F .text	00000016 .hidden __riscv_restore_7
000003d0 g     F .text	00000040 main
000007f8 g     F .text	00000002 __retarget_lock_init_recursive
00000d4c g     F .text	00000006 __sclose
00000852 g     F .text	0000010e _malloc_r
000004fa  w      .text	00000000 DMA1_Channel5_IRQHandler
000004fa  w      .text	00000000 EXTI4_IRQHandler
0000019a g     F .text	00000036 Delay_Ms
000004fa  w      .text	00000000 USB_LP_CAN1_RX0_IRQHandler
00000410 g     F .text	000000ea SystemInit
00000582 g     F .text	00000038 iprintf
000004fa  w      .text	00000000 USB_HP_CAN1_TX_IRQHandler
00000000 g       .init	00000000 _sinit
00000e10 g     F .text	0000002c _write_r
000001d0 g     F .text	00000014 SDI_Printf_Enable
000004fa  w      .text	00000000 DMA1_Channel3_IRQHandler
000012ee g     F .text	00000110 _printf_common
20000068 g     O .data	00000004 _impure_ptr
000004fa  w      .text	00000000 TIM1_UP_IRQHandler
00000f54 g     F .text	00000132 __sflush_r
000004fa  w      .text	00000000 WWDG_IRQHandler
000004fa  w      .text	00000000 Ecall_U_Mode_Handler
000004fa  w      .text	00000000 TIM2_IRQHandler
20005000 g       .stack	00000000 _eusrstack
00000140 g     F .text	0000000c .hidden __riscv_save_2
000004fa  w      .text	00000000 SW_Handler
000004fa  w      .text	00000000 TIM1_BRK_IRQHandler
0000113c g     F .text	00000058 __swhatbuf_r
000004fa  w      .text	00000000 EXTI1_IRQHandler
00000126 g     F .text	0000001a .hidden __riscv_save_5
000001e4 g     F .text	00000070 _write
20000074 g       .data	00000000 _edata
20000094 g       .bss	00000000 _end
000004fa  w      .text	00000000 RTCAlarm_IRQHandler
00001844 g       .dlalign	00000000 _data_lma
000004fa  w      .text	00000000 USART2_IRQHandler
00000cd4 g     F .text	00000048 __swrite
000009c6 g     F .text	000002b8 _vfiprintf_r
00000790 g     F .text	00000068 _fwalk_reent
000004fa  w      .text	00000000 I2C2_ER_IRQHandler
000004fa  w      .text	00000000 DMA1_Channel2_IRQHandler
00000672 g     F .text	00000006 __sfp_lock_release
00001770 g     O .text	00000020 __sf_fake_stdout
0000014c g     F .text	00000024 .hidden __riscv_restore_12
0000171e g     F .text	0000000c _read
000004fc  w      .text	00000000 handle_reset
000004fa  w      .text	00000000 CAN1_SCE_IRQHandler
000004fa  w      .text	00000000 FLASH_IRQHandler
00000140 g     F .text	0000000c .hidden __riscv_save_0
000004fa  w      .text	00000000 USBFSWakeUp_IRQHandler
000004fa  w      .text	00000000 USART1_IRQHandler
00001194 g     F .text	00000094 __smakebuf_r
000013fe g     F .text	00000278 _printf_i
20000088 g     O .bss	00000004 __malloc_sbrk_start
000004fa  w      .text	00000000 I2C1_ER_IRQHandler
0000036c g     F .text	00000006 NVIC_PriorityGroupConfig
2000008c g     O .bss	00000004 __malloc_free_list
00000164 g     F .text	0000000c .hidden __riscv_restore_1
000009c6 g     F .text	000002b8 _vfprintf_r
000004fa  w      .text	00000000 USBWakeUp_IRQHandler
20000080 g     O .bss	00000001 __lock___sfp_recursive_mutex
000016ee g     F .text	0000000c _close
00000678 g     F .text	00000006 __sinit_lock_acquire



Disassembly of section .init:

00000000 <_sinit>:
   0:	4fc0006f          	j	4fc <handle_reset>

Disassembly of section .vector:

00000004 <_vector_base>:
	...
   c:	00000390          	.word	0x00000390
  10:	00000392          	.word	0x00000392
  14:	00000000          	.word	0x00000000
  18:	000004fa          	.word	0x000004fa
	...
  24:	000004fa          	.word	0x000004fa
  28:	000004fa          	.word	0x000004fa
	...
  34:	000004fa          	.word	0x000004fa
  38:	00000000          	.word	0x00000000
  3c:	000004fa          	.word	0x000004fa
  40:	00000000          	.word	0x00000000
  44:	000004fa          	.word	0x000004fa
  48:	000004fa          	.word	0x000004fa
  4c:	000004fa          	.word	0x000004fa
  50:	000004fa          	.word	0x000004fa
  54:	000004fa          	.word	0x000004fa
  58:	000004fa          	.word	0x000004fa
  5c:	000004fa          	.word	0x000004fa
  60:	000004fa          	.word	0x000004fa
  64:	000004fa          	.word	0x000004fa
  68:	000004fa          	.word	0x000004fa
  6c:	000004fa          	.word	0x000004fa
  70:	000004fa          	.word	0x000004fa
  74:	000004fa          	.word	0x000004fa
  78:	000004fa          	.word	0x000004fa
  7c:	000004fa          	.word	0x000004fa
  80:	000004fa          	.word	0x000004fa
  84:	000004fa          	.word	0x000004fa
  88:	000004fa          	.word	0x000004fa
  8c:	000004fa          	.word	0x000004fa
  90:	000004fa          	.word	0x000004fa
  94:	000004fa          	.word	0x000004fa
  98:	000004fa          	.word	0x000004fa
  9c:	000004fa          	.word	0x000004fa
  a0:	000004fa          	.word	0x000004fa
  a4:	000004fa          	.word	0x000004fa
  a8:	000004fa          	.word	0x000004fa
  ac:	000004fa          	.word	0x000004fa
  b0:	000004fa          	.word	0x000004fa
  b4:	000004fa          	.word	0x000004fa
  b8:	000004fa          	.word	0x000004fa
  bc:	000004fa          	.word	0x000004fa
  c0:	000004fa          	.word	0x000004fa
  c4:	000004fa          	.word	0x000004fa
  c8:	000004fa          	.word	0x000004fa
  cc:	000004fa          	.word	0x000004fa
  d0:	000004fa          	.word	0x000004fa
  d4:	000004fa          	.word	0x000004fa
  d8:	000004fa          	.word	0x000004fa
  dc:	000004fa          	.word	0x000004fa
  e0:	000004fa          	.word	0x000004fa
  e4:	000004fa          	.word	0x000004fa
  e8:	000004fa          	.word	0x000004fa
  ec:	000004fa          	.word	0x000004fa
  f0:	000004fa          	.word	0x000004fa
  f4:	000004fa          	.word	0x000004fa
  f8:	000004fa          	.word	0x000004fa
  fc:	000004fa          	.word	0x000004fa

Disassembly of section .text:

00000100 <memset>:
     100:	832a                	mv	t1,a0
     102:	c611                	beqz	a2,10e <memset+0xe>
     104:	00b30023          	sb	a1,0(t1)
     108:	167d                	addi	a2,a2,-1
     10a:	0305                	addi	t1,t1,1
     10c:	fe65                	bnez	a2,104 <memset+0x4>
     10e:	8082                	ret

00000110 <__riscv_save_12>:
     110:	7139                	addi	sp,sp,-64
     112:	4301                	li	t1,0
     114:	c66e                	sw	s11,12(sp)
     116:	a019                	j	11c <__riscv_save_10+0x4>

00000118 <__riscv_save_10>:
     118:	7139                	addi	sp,sp,-64
     11a:	5341                	li	t1,-16
     11c:	c86a                	sw	s10,16(sp)
     11e:	ca66                	sw	s9,20(sp)
     120:	cc62                	sw	s8,24(sp)
     122:	ce5e                	sw	s7,28(sp)
     124:	a019                	j	12a <__riscv_save_4+0x4>

00000126 <__riscv_save_4>:
     126:	7139                	addi	sp,sp,-64
     128:	5301                	li	t1,-32
     12a:	d05a                	sw	s6,32(sp)
     12c:	d256                	sw	s5,36(sp)
     12e:	d452                	sw	s4,40(sp)
     130:	d64e                	sw	s3,44(sp)
     132:	d84a                	sw	s2,48(sp)
     134:	da26                	sw	s1,52(sp)
     136:	dc22                	sw	s0,56(sp)
     138:	de06                	sw	ra,60(sp)
     13a:	40610133          	sub	sp,sp,t1
     13e:	8282                	jr	t0

00000140 <__riscv_save_0>:
     140:	1141                	addi	sp,sp,-16
     142:	c04a                	sw	s2,0(sp)
     144:	c226                	sw	s1,4(sp)
     146:	c422                	sw	s0,8(sp)
     148:	c606                	sw	ra,12(sp)
     14a:	8282                	jr	t0

0000014c <__riscv_restore_12>:
     14c:	4db2                	lw	s11,12(sp)
     14e:	0141                	addi	sp,sp,16

00000150 <__riscv_restore_10>:
     150:	4d02                	lw	s10,0(sp)
     152:	4c92                	lw	s9,4(sp)
     154:	4c22                	lw	s8,8(sp)
     156:	4bb2                	lw	s7,12(sp)
     158:	0141                	addi	sp,sp,16

0000015a <__riscv_restore_4>:
     15a:	4b02                	lw	s6,0(sp)
     15c:	4a92                	lw	s5,4(sp)
     15e:	4a22                	lw	s4,8(sp)
     160:	49b2                	lw	s3,12(sp)
     162:	0141                	addi	sp,sp,16

00000164 <__riscv_restore_0>:
     164:	4902                	lw	s2,0(sp)
     166:	4492                	lw	s1,4(sp)
     168:	4422                	lw	s0,8(sp)
     16a:	40b2                	lw	ra,12(sp)
     16c:	0141                	addi	sp,sp,16
     16e:	8082                	ret

00000170 <Delay_Init>:
     170:	200007b7          	lui	a5,0x20000
     174:	0647a783          	lw	a5,100(a5) # 20000064 <SystemCoreClock>
     178:	007a1737          	lui	a4,0x7a1
     17c:	20070713          	addi	a4,a4,512 # 7a1200 <_data_lma+0x79f9bc>
     180:	02e7d7b3          	divu	a5,a5,a4
     184:	0ff7f793          	zext.b	a5,a5
     188:	80f18b23          	sb	a5,-2026(gp) # 20000076 <p_us>
     18c:	3e800713          	li	a4,1000
     190:	02e787b3          	mul	a5,a5,a4
     194:	80f19a23          	sh	a5,-2028(gp) # 20000074 <p_ms>
     198:	8082                	ret

0000019a <Delay_Ms>:
     19a:	e000f7b7          	lui	a5,0xe000f
     19e:	43d8                	lw	a4,4(a5)
     1a0:	4681                	li	a3,0
     1a2:	9b79                	andi	a4,a4,-2
     1a4:	c3d8                	sw	a4,4(a5)
     1a6:	8141d703          	lhu	a4,-2028(gp) # 20000074 <p_ms>
     1aa:	02a70633          	mul	a2,a4,a0
     1ae:	cb90                	sw	a2,16(a5)
     1b0:	cbd4                	sw	a3,20(a5)
     1b2:	4398                	lw	a4,0(a5)
     1b4:	01076713          	ori	a4,a4,16
     1b8:	c398                	sw	a4,0(a5)
     1ba:	4398                	lw	a4,0(a5)
     1bc:	02176713          	ori	a4,a4,33
     1c0:	c398                	sw	a4,0(a5)
     1c2:	43d8                	lw	a4,4(a5)
     1c4:	8b05                	andi	a4,a4,1
     1c6:	df75                	beqz	a4,1c2 <Delay_Ms+0x28>
     1c8:	4398                	lw	a4,0(a5)
     1ca:	9b79                	andi	a4,a4,-2
     1cc:	c398                	sw	a4,0(a5)
     1ce:	8082                	ret

000001d0 <SDI_Printf_Enable>:
     1d0:	f71ff2ef          	jal	t0,140 <__riscv_save_0>
     1d4:	e00007b7          	lui	a5,0xe0000
     1d8:	3807a023          	sw	zero,896(a5) # e0000380 <_eusrstack+0xbfffb380>
     1dc:	3f51                	jal	170 <Delay_Init>
     1de:	4505                	li	a0,1
     1e0:	3f6d                	jal	19a <Delay_Ms>
     1e2:	b749                	j	164 <__riscv_restore_0>

000001e4 <_write>:
     1e4:	8532                	mv	a0,a2
     1e6:	8732                	mv	a4,a2
     1e8:	e0000837          	lui	a6,0xe0000
     1ec:	489d                	li	a7,7
     1ee:	38080693          	addi	a3,a6,896 # e0000380 <_eusrstack+0xbfffb380>
     1f2:	429c                	lw	a5,0(a3)
     1f4:	ffed                	bnez	a5,1ee <_write+0xa>
     1f6:	00458783          	lb	a5,4(a1)
     1fa:	00558603          	lb	a2,5(a1)
     1fe:	07a2                	slli	a5,a5,0x8
     200:	0642                	slli	a2,a2,0x10
     202:	8fd1                	or	a5,a5,a2
     204:	00358603          	lb	a2,3(a1)
     208:	8fd1                	or	a5,a5,a2
     20a:	00658603          	lb	a2,6(a1)
     20e:	0662                	slli	a2,a2,0x18
     210:	8fd1                	or	a5,a5,a2
     212:	38480613          	addi	a2,a6,900
     216:	c21c                	sw	a5,0(a2)
     218:	00058783          	lb	a5,0(a1)
     21c:	07a2                	slli	a5,a5,0x8
     21e:	02e8d063          	bge	a7,a4,23e <_write+0x5a>
     222:	00258603          	lb	a2,2(a1)
     226:	1765                	addi	a4,a4,-7
     228:	059d                	addi	a1,a1,7
     22a:	0662                	slli	a2,a2,0x18
     22c:	8fd1                	or	a5,a5,a2
     22e:	ffa58603          	lb	a2,-6(a1)
     232:	0642                	slli	a2,a2,0x10
     234:	8fd1                	or	a5,a5,a2
     236:	0077e793          	ori	a5,a5,7
     23a:	c29c                	sw	a5,0(a3)
     23c:	bf4d                	j	1ee <_write+0xa>
     23e:	8fd9                	or	a5,a5,a4
     240:	00158703          	lb	a4,1(a1)
     244:	0742                	slli	a4,a4,0x10
     246:	8fd9                	or	a5,a5,a4
     248:	00258703          	lb	a4,2(a1)
     24c:	0762                	slli	a4,a4,0x18
     24e:	8fd9                	or	a5,a5,a4
     250:	c29c                	sw	a5,0(a3)
     252:	8082                	ret

00000254 <_sbrk>:
     254:	200006b7          	lui	a3,0x20000
     258:	87aa                	mv	a5,a0
     25a:	0606a503          	lw	a0,96(a3) # 20000060 <curbrk.0>
     25e:	83418713          	addi	a4,gp,-1996 # 20000094 <_ebss>
     262:	97aa                	add	a5,a5,a0
     264:	00e7eb63          	bltu	a5,a4,27a <_sbrk+0x26>
     268:	20005737          	lui	a4,0x20005
     26c:	80070713          	addi	a4,a4,-2048 # 20004800 <_heap_end>
     270:	00f76563          	bltu	a4,a5,27a <_sbrk+0x26>
     274:	06f6a023          	sw	a5,96(a3)
     278:	8082                	ret
     27a:	557d                	li	a0,-1
     27c:	8082                	ret

0000027e <GPIO_Init>:
     27e:	459c                	lw	a5,8(a1)
     280:	0107f713          	andi	a4,a5,16
     284:	00f7f813          	andi	a6,a5,15
     288:	c701                	beqz	a4,290 <GPIO_Init+0x12>
     28a:	41d8                	lw	a4,4(a1)
     28c:	00e86833          	or	a6,a6,a4
     290:	40022737          	lui	a4,0x40022
     294:	5b14                	lw	a3,48(a4)
     296:	0f000737          	lui	a4,0xf000
     29a:	8f75                	and	a4,a4,a3
     29c:	eb45                	bnez	a4,34c <GPIO_Init+0xce>
     29e:	4685                	li	a3,1
     2a0:	80d18ba3          	sb	a3,-2025(gp) # 20000077 <MCU_Version>
     2a4:	40011737          	lui	a4,0x40011
     2a8:	00e51563          	bne	a0,a4,2b2 <GPIO_Init+0x34>
     2ac:	219a                	.2byte	0x219a
     2ae:	8335                	srli	a4,a4,0xd
     2b0:	a19a                	.2byte	0xa19a
     2b2:	218e                	.2byte	0x218e
     2b4:	0ff5f713          	zext.b	a4,a1
     2b8:	c331                	beqz	a4,2fc <GPIO_Init+0x7e>
     2ba:	4118                	lw	a4,0(a0)
     2bc:	4681                	li	a3,0
     2be:	4e05                	li	t3,1
     2c0:	02800e93          	li	t4,40
     2c4:	4f3d                	li	t5,15
     2c6:	04800f93          	li	t6,72
     2ca:	4321                	li	t1,8
     2cc:	00de1633          	sll	a2,t3,a3
     2d0:	00c5f8b3          	and	a7,a1,a2
     2d4:	03161063          	bne	a2,a7,2f4 <GPIO_Init+0x76>
     2d8:	09d79263          	bne	a5,t4,35c <GPIO_Init+0xde>
     2dc:	c950                	sw	a2,20(a0)
     2de:	00269613          	slli	a2,a3,0x2
     2e2:	00cf18b3          	sll	a7,t5,a2
     2e6:	fff8c893          	not	a7,a7
     2ea:	00e8f733          	and	a4,a7,a4
     2ee:	00c81633          	sll	a2,a6,a2
     2f2:	8f51                	or	a4,a4,a2
     2f4:	0685                	addi	a3,a3,1
     2f6:	fc669be3          	bne	a3,t1,2cc <GPIO_Init+0x4e>
     2fa:	c118                	sw	a4,0(a0)
     2fc:	0ff00713          	li	a4,255
     300:	04b77563          	bgeu	a4,a1,34a <GPIO_Init+0xcc>
     304:	4154                	lw	a3,4(a0)
     306:	4601                	li	a2,0
     308:	4e05                	li	t3,1
     30a:	02800e93          	li	t4,40
     30e:	04800f13          	li	t5,72
     312:	4321                	li	t1,8
     314:	00860713          	addi	a4,a2,8
     318:	00ee1733          	sll	a4,t3,a4
     31c:	00e5f8b3          	and	a7,a1,a4
     320:	03171163          	bne	a4,a7,342 <GPIO_Init+0xc4>
     324:	05d79063          	bne	a5,t4,364 <GPIO_Init+0xe6>
     328:	c958                	sw	a4,20(a0)
     32a:	00261893          	slli	a7,a2,0x2
     32e:	473d                	li	a4,15
     330:	01171733          	sll	a4,a4,a7
     334:	fff74713          	not	a4,a4
     338:	8ef9                	and	a3,a3,a4
     33a:	011818b3          	sll	a7,a6,a7
     33e:	00d8e6b3          	or	a3,a7,a3
     342:	0605                	addi	a2,a2,1
     344:	fc6618e3          	bne	a2,t1,314 <GPIO_Init+0x96>
     348:	c154                	sw	a3,4(a0)
     34a:	8082                	ret
     34c:	40011737          	lui	a4,0x40011
     350:	f6e511e3          	bne	a0,a4,2b2 <GPIO_Init+0x34>
     354:	8171c703          	lbu	a4,-2025(gp) # 20000077 <MCU_Version>
     358:	df29                	beqz	a4,2b2 <GPIO_Init+0x34>
     35a:	bf89                	j	2ac <GPIO_Init+0x2e>
     35c:	f9f791e3          	bne	a5,t6,2de <GPIO_Init+0x60>
     360:	c910                	sw	a2,16(a0)
     362:	bfb5                	j	2de <GPIO_Init+0x60>
     364:	fde793e3          	bne	a5,t5,32a <GPIO_Init+0xac>
     368:	c918                	sw	a4,16(a0)
     36a:	b7c1                	j	32a <GPIO_Init+0xac>

0000036c <NVIC_PriorityGroupConfig>:
     36c:	80a1ac23          	sw	a0,-2024(gp) # 20000078 <NVIC_Priority_Group>
     370:	8082                	ret

00000372 <RCC_APB2PeriphClockCmd>:
     372:	c599                	beqz	a1,380 <RCC_APB2PeriphClockCmd+0xe>
     374:	40021737          	lui	a4,0x40021
     378:	4f1c                	lw	a5,24(a4)
     37a:	8fc9                	or	a5,a5,a0
     37c:	cf1c                	sw	a5,24(a4)
     37e:	8082                	ret
     380:	400217b7          	lui	a5,0x40021
     384:	4f98                	lw	a4,24(a5)
     386:	fff54513          	not	a0,a0
     38a:	8d79                	and	a0,a0,a4
     38c:	cf88                	sw	a0,24(a5)
     38e:	8082                	ret

00000390 <NMI_Handler>:
     390:	a001                	j	390 <NMI_Handler>

00000392 <HardFault_Handler>:
     392:	beef07b7          	lui	a5,0xbeef0
     396:	e000e737          	lui	a4,0xe000e
     39a:	08078793          	addi	a5,a5,128 # beef0080 <_eusrstack+0x9eeeb080>
     39e:	c73c                	sw	a5,72(a4)
     3a0:	a001                	j	3a0 <HardFault_Handler+0xe>

000003a2 <GPIO_Toggle_INIT>:
     3a2:	d9fff2ef          	jal	t0,140 <__riscv_save_0>
     3a6:	1141                	addi	sp,sp,-16
     3a8:	4585                	li	a1,1
     3aa:	4511                	li	a0,4
     3ac:	c202                	sw	zero,4(sp)
     3ae:	c402                	sw	zero,8(sp)
     3b0:	c602                	sw	zero,12(sp)
     3b2:	37c1                	jal	372 <RCC_APB2PeriphClockCmd>
     3b4:	4785                	li	a5,1
     3b6:	827c                	.2byte	0x827c
     3b8:	40011537          	lui	a0,0x40011
     3bc:	47c1                	li	a5,16
     3be:	c63e                	sw	a5,12(sp)
     3c0:	004c                	addi	a1,sp,4
     3c2:	478d                	li	a5,3
     3c4:	80050513          	addi	a0,a0,-2048 # 40010800 <_eusrstack+0x2000b800>
     3c8:	c43e                	sw	a5,8(sp)
     3ca:	3d55                	jal	27e <GPIO_Init>
     3cc:	0141                	addi	sp,sp,16
     3ce:	bb59                	j	164 <__riscv_restore_0>

000003d0 <main>:
     3d0:	d71ff2ef          	jal	t0,140 <__riscv_save_0>
     3d4:	1141                	addi	sp,sp,-16
     3d6:	4505                	li	a0,1
     3d8:	3f51                	jal	36c <NVIC_PriorityGroupConfig>
     3da:	3b59                	jal	170 <Delay_Init>
     3dc:	3bd5                	jal	1d0 <SDI_Printf_Enable>
     3de:	200007b7          	lui	a5,0x20000
     3e2:	0647a583          	lw	a1,100(a5) # 20000064 <SystemCoreClock>
     3e6:	6505                	lui	a0,0x1
     3e8:	72c50513          	addi	a0,a0,1836 # 172c <_read+0xe>
     3ec:	2a59                	jal	582 <iprintf>
     3ee:	3f55                	jal	3a2 <GPIO_Toggle_INIT>
     3f0:	4581                	li	a1,0
     3f2:	6485                	lui	s1,0x1
     3f4:	3e800513          	li	a0,1000
     3f8:	c62e                	sw	a1,12(sp)
     3fa:	3345                	jal	19a <Delay_Ms>
     3fc:	45b2                	lw	a1,12(sp)
     3fe:	73c48513          	addi	a0,s1,1852 # 173c <_read+0x1e>
     402:	00158413          	addi	s0,a1,1
     406:	0ff47413          	zext.b	s0,s0
     40a:	2aa5                	jal	582 <iprintf>
     40c:	85a2                	mv	a1,s0
     40e:	b7dd                	j	3f4 <main+0x24>

00000410 <SystemInit>:
     410:	400217b7          	lui	a5,0x40021
     414:	4398                	lw	a4,0(a5)
     416:	f0ff06b7          	lui	a3,0xf0ff0
     41a:	1141                	addi	sp,sp,-16
     41c:	00176713          	ori	a4,a4,1
     420:	c398                	sw	a4,0(a5)
     422:	43d8                	lw	a4,4(a5)
     424:	00020637          	lui	a2,0x20
     428:	8f75                	and	a4,a4,a3
     42a:	c3d8                	sw	a4,4(a5)
     42c:	4398                	lw	a4,0(a5)
     42e:	fef706b7          	lui	a3,0xfef70
     432:	16fd                	addi	a3,a3,-1 # fef6ffff <_eusrstack+0xdef6afff>
     434:	8f75                	and	a4,a4,a3
     436:	c398                	sw	a4,0(a5)
     438:	4398                	lw	a4,0(a5)
     43a:	fffc06b7          	lui	a3,0xfffc0
     43e:	16fd                	addi	a3,a3,-1 # fffbffff <_eusrstack+0xdffbafff>
     440:	8f75                	and	a4,a4,a3
     442:	c398                	sw	a4,0(a5)
     444:	43d8                	lw	a4,4(a5)
     446:	ff0106b7          	lui	a3,0xff010
     44a:	16fd                	addi	a3,a3,-1 # ff00ffff <_eusrstack+0xdf00afff>
     44c:	8f75                	and	a4,a4,a3
     44e:	c3d8                	sw	a4,4(a5)
     450:	009f0737          	lui	a4,0x9f0
     454:	c798                	sw	a4,8(a5)
     456:	c402                	sw	zero,8(sp)
     458:	c602                	sw	zero,12(sp)
     45a:	4398                	lw	a4,0(a5)
     45c:	66c1                	lui	a3,0x10
     45e:	8f55                	or	a4,a4,a3
     460:	c398                	sw	a4,0(a5)
     462:	400216b7          	lui	a3,0x40021
     466:	6705                	lui	a4,0x1
     468:	429c                	lw	a5,0(a3)
     46a:	8ff1                	and	a5,a5,a2
     46c:	c63e                	sw	a5,12(sp)
     46e:	47a2                	lw	a5,8(sp)
     470:	0785                	addi	a5,a5,1 # 40021001 <_eusrstack+0x2001c001>
     472:	c43e                	sw	a5,8(sp)
     474:	47b2                	lw	a5,12(sp)
     476:	e781                	bnez	a5,47e <SystemInit+0x6e>
     478:	47a2                	lw	a5,8(sp)
     47a:	fee797e3          	bne	a5,a4,468 <SystemInit+0x58>
     47e:	400217b7          	lui	a5,0x40021
     482:	439c                	lw	a5,0(a5)
     484:	00020737          	lui	a4,0x20
     488:	8ff9                	and	a5,a5,a4
     48a:	c7b5                	beqz	a5,4f6 <SystemInit+0xe6>
     48c:	4785                	li	a5,1
     48e:	c63e                	sw	a5,12(sp)
     490:	4732                	lw	a4,12(sp)
     492:	4785                	li	a5,1
     494:	04f71f63          	bne	a4,a5,4f2 <SystemInit+0xe2>
     498:	400217b7          	lui	a5,0x40021
     49c:	43d8                	lw	a4,4(a5)
     49e:	ffc106b7          	lui	a3,0xffc10
     4a2:	16fd                	addi	a3,a3,-1 # ffc0ffff <_eusrstack+0xdfc0afff>
     4a4:	c3d8                	sw	a4,4(a5)
     4a6:	43d8                	lw	a4,4(a5)
     4a8:	c3d8                	sw	a4,4(a5)
     4aa:	43d8                	lw	a4,4(a5)
     4ac:	40076713          	ori	a4,a4,1024
     4b0:	c3d8                	sw	a4,4(a5)
     4b2:	43d8                	lw	a4,4(a5)
     4b4:	8f75                	and	a4,a4,a3
     4b6:	c3d8                	sw	a4,4(a5)
     4b8:	43d8                	lw	a4,4(a5)
     4ba:	002906b7          	lui	a3,0x290
     4be:	8f55                	or	a4,a4,a3
     4c0:	c3d8                	sw	a4,4(a5)
     4c2:	4398                	lw	a4,0(a5)
     4c4:	010006b7          	lui	a3,0x1000
     4c8:	8f55                	or	a4,a4,a3
     4ca:	c398                	sw	a4,0(a5)
     4cc:	020006b7          	lui	a3,0x2000
     4d0:	4398                	lw	a4,0(a5)
     4d2:	8f75                	and	a4,a4,a3
     4d4:	df75                	beqz	a4,4d0 <SystemInit+0xc0>
     4d6:	43d8                	lw	a4,4(a5)
     4d8:	400216b7          	lui	a3,0x40021
     4dc:	9b71                	andi	a4,a4,-4
     4de:	c3d8                	sw	a4,4(a5)
     4e0:	43d8                	lw	a4,4(a5)
     4e2:	00276713          	ori	a4,a4,2
     4e6:	c3d8                	sw	a4,4(a5)
     4e8:	4721                	li	a4,8
     4ea:	42dc                	lw	a5,4(a3)
     4ec:	8bb1                	andi	a5,a5,12
     4ee:	fee79ee3          	bne	a5,a4,4ea <SystemInit+0xda>
     4f2:	0141                	addi	sp,sp,16
     4f4:	8082                	ret
     4f6:	c602                	sw	zero,12(sp)
     4f8:	bf61                	j	490 <SystemInit+0x80>

000004fa <ADC1_2_IRQHandler>:
     4fa:	a001                	j	4fa <ADC1_2_IRQHandler>

000004fc <handle_reset>:
     4fc:	20000197          	auipc	gp,0x20000
     500:	36418193          	addi	gp,gp,868 # 20000860 <__global_pointer$>
     504:	20005117          	auipc	sp,0x20005
     508:	afc10113          	addi	sp,sp,-1284 # 20005000 <_eusrstack>
     50c:	00001517          	auipc	a0,0x1
     510:	33850513          	addi	a0,a0,824 # 1844 <_data_lma>
     514:	20000597          	auipc	a1,0x20000
     518:	aec58593          	addi	a1,a1,-1300 # 20000000 <impure_data>
     51c:	81418613          	addi	a2,gp,-2028 # 20000074 <p_ms>
     520:	00c5fa63          	bgeu	a1,a2,534 <handle_reset+0x38>
     524:	00052283          	lw	t0,0(a0)
     528:	0055a023          	sw	t0,0(a1)
     52c:	0511                	addi	a0,a0,4
     52e:	0591                	addi	a1,a1,4
     530:	fec5eae3          	bltu	a1,a2,524 <handle_reset+0x28>
     534:	81418513          	addi	a0,gp,-2028 # 20000074 <p_ms>
     538:	83418593          	addi	a1,gp,-1996 # 20000094 <_ebss>
     53c:	00b57763          	bgeu	a0,a1,54a <handle_reset+0x4e>
     540:	00052023          	sw	zero,0(a0)
     544:	0511                	addi	a0,a0,4
     546:	feb56de3          	bltu	a0,a1,540 <handle_reset+0x44>
     54a:	42fd                	li	t0,31
     54c:	bc029073          	csrw	0xbc0,t0
     550:	428d                	li	t0,3
     552:	80429073          	csrw	0x804,t0
     556:	08800293          	li	t0,136
     55a:	30029073          	csrw	mstatus,t0
     55e:	00000297          	auipc	t0,0x0
     562:	aa628293          	addi	t0,t0,-1370 # 4 <_einit>
     566:	0032e293          	ori	t0,t0,3
     56a:	30529073          	csrw	mtvec,t0
     56e:	ea3ff0ef          	jal	ra,410 <SystemInit>
     572:	00000297          	auipc	t0,0x0
     576:	e5e28293          	addi	t0,t0,-418 # 3d0 <main>
     57a:	34129073          	csrw	mepc,t0
     57e:	30200073          	mret

00000582 <iprintf>:
     582:	715d                	addi	sp,sp,-80
     584:	d422                	sw	s0,40(sp)
     586:	d606                	sw	ra,44(sp)
     588:	842a                	mv	s0,a0
     58a:	da2e                	sw	a1,52(sp)
     58c:	dc32                	sw	a2,56(sp)
     58e:	de36                	sw	a3,60(sp)
     590:	c0ba                	sw	a4,64(sp)
     592:	c2be                	sw	a5,68(sp)
     594:	c4c2                	sw	a6,72(sp)
     596:	c6c6                	sw	a7,76(sp)
     598:	8081a503          	lw	a0,-2040(gp) # 20000068 <_impure_ptr>
     59c:	c511                	beqz	a0,5a8 <iprintf+0x26>
     59e:	4d1c                	lw	a5,24(a0)
     5a0:	e781                	bnez	a5,5a8 <iprintf+0x26>
     5a2:	c62a                	sw	a0,12(sp)
     5a4:	20c5                	jal	684 <__sinit>
     5a6:	4532                	lw	a0,12(sp)
     5a8:	450c                	lw	a1,8(a0)
     5aa:	1854                	addi	a3,sp,52
     5ac:	8622                	mv	a2,s0
     5ae:	ce36                	sw	a3,28(sp)
     5b0:	2919                	jal	9c6 <_vfiprintf_r>
     5b2:	50b2                	lw	ra,44(sp)
     5b4:	5422                	lw	s0,40(sp)
     5b6:	6161                	addi	sp,sp,80
     5b8:	8082                	ret

000005ba <std>:
     5ba:	1141                	addi	sp,sp,-16
     5bc:	c422                	sw	s0,8(sp)
     5be:	c606                	sw	ra,12(sp)
     5c0:	842a                	mv	s0,a0
     5c2:	a54e                	.2byte	0xa54e
     5c4:	a572                	.2byte	0xa572
     5c6:	00052023          	sw	zero,0(a0)
     5ca:	00052223          	sw	zero,4(a0)
     5ce:	00052423          	sw	zero,8(a0)
     5d2:	06052223          	sw	zero,100(a0)
     5d6:	00052823          	sw	zero,16(a0)
     5da:	00052a23          	sw	zero,20(a0)
     5de:	00052c23          	sw	zero,24(a0)
     5e2:	4621                	li	a2,8
     5e4:	4581                	li	a1,0
     5e6:	05c50513          	addi	a0,a0,92
     5ea:	3e19                	jal	100 <memset>
     5ec:	00000797          	auipc	a5,0x0
     5f0:	6ba78793          	addi	a5,a5,1722 # ca6 <__sread>
     5f4:	d05c                	sw	a5,36(s0)
     5f6:	00000797          	auipc	a5,0x0
     5fa:	6de78793          	addi	a5,a5,1758 # cd4 <__swrite>
     5fe:	d41c                	sw	a5,40(s0)
     600:	00000797          	auipc	a5,0x0
     604:	71c78793          	addi	a5,a5,1820 # d1c <__sseek>
     608:	d45c                	sw	a5,44(s0)
     60a:	00000797          	auipc	a5,0x0
     60e:	74278793          	addi	a5,a5,1858 # d4c <__sclose>
     612:	40b2                	lw	ra,12(sp)
     614:	d000                	sw	s0,32(s0)
     616:	d81c                	sw	a5,48(s0)
     618:	4422                	lw	s0,8(sp)
     61a:	0141                	addi	sp,sp,16
     61c:	8082                	ret

0000061e <_cleanup_r>:
     61e:	00001597          	auipc	a1,0x1
     622:	a6858593          	addi	a1,a1,-1432 # 1086 <_fflush_r>
     626:	a2ad                	j	790 <_fwalk_reent>

00000628 <__sfmoreglue>:
     628:	1141                	addi	sp,sp,-16
     62a:	c226                	sw	s1,4(sp)
     62c:	06800793          	li	a5,104
     630:	fff58493          	addi	s1,a1,-1
     634:	02f484b3          	mul	s1,s1,a5
     638:	c04a                	sw	s2,0(sp)
     63a:	892e                	mv	s2,a1
     63c:	c422                	sw	s0,8(sp)
     63e:	c606                	sw	ra,12(sp)
     640:	07448593          	addi	a1,s1,116
     644:	2439                	jal	852 <_malloc_r>
     646:	842a                	mv	s0,a0
     648:	c919                	beqz	a0,65e <__sfmoreglue+0x36>
     64a:	00052023          	sw	zero,0(a0)
     64e:	01252223          	sw	s2,4(a0)
     652:	0531                	addi	a0,a0,12
     654:	c408                	sw	a0,8(s0)
     656:	06848613          	addi	a2,s1,104
     65a:	4581                	li	a1,0
     65c:	3455                	jal	100 <memset>
     65e:	40b2                	lw	ra,12(sp)
     660:	8522                	mv	a0,s0
     662:	4422                	lw	s0,8(sp)
     664:	4492                	lw	s1,4(sp)
     666:	4902                	lw	s2,0(sp)
     668:	0141                	addi	sp,sp,16
     66a:	8082                	ret

0000066c <__sfp_lock_acquire>:
     66c:	82018513          	addi	a0,gp,-2016 # 20000080 <__lock___sfp_recursive_mutex>
     670:	a269                	j	7fa <__retarget_lock_acquire_recursive>

00000672 <__sfp_lock_release>:
     672:	82018513          	addi	a0,gp,-2016 # 20000080 <__lock___sfp_recursive_mutex>
     676:	a259                	j	7fc <__retarget_lock_release_recursive>

00000678 <__sinit_lock_acquire>:
     678:	82418513          	addi	a0,gp,-2012 # 20000084 <__lock___sinit_recursive_mutex>
     67c:	aabd                	j	7fa <__retarget_lock_acquire_recursive>

0000067e <__sinit_lock_release>:
     67e:	82418513          	addi	a0,gp,-2012 # 20000084 <__lock___sinit_recursive_mutex>
     682:	aaad                	j	7fc <__retarget_lock_release_recursive>

00000684 <__sinit>:
     684:	1141                	addi	sp,sp,-16
     686:	c422                	sw	s0,8(sp)
     688:	c606                	sw	ra,12(sp)
     68a:	842a                	mv	s0,a0
     68c:	37f5                	jal	678 <__sinit_lock_acquire>
     68e:	4c1c                	lw	a5,24(s0)
     690:	c789                	beqz	a5,69a <__sinit+0x16>
     692:	4422                	lw	s0,8(sp)
     694:	40b2                	lw	ra,12(sp)
     696:	0141                	addi	sp,sp,16
     698:	b7dd                	j	67e <__sinit_lock_release>
     69a:	00000797          	auipc	a5,0x0
     69e:	f8478793          	addi	a5,a5,-124 # 61e <_cleanup_r>
     6a2:	d41c                	sw	a5,40(s0)
     6a4:	04042423          	sw	zero,72(s0)
     6a8:	04042623          	sw	zero,76(s0)
     6ac:	04042823          	sw	zero,80(s0)
     6b0:	8101a783          	lw	a5,-2032(gp) # 20000070 <_global_impure_ptr>
     6b4:	00879463          	bne	a5,s0,6bc <__sinit+0x38>
     6b8:	4785                	li	a5,1
     6ba:	cc1c                	sw	a5,24(s0)
     6bc:	8522                	mv	a0,s0
     6be:	203d                	jal	6ec <__sfp>
     6c0:	c048                	sw	a0,4(s0)
     6c2:	8522                	mv	a0,s0
     6c4:	2025                	jal	6ec <__sfp>
     6c6:	c408                	sw	a0,8(s0)
     6c8:	8522                	mv	a0,s0
     6ca:	200d                	jal	6ec <__sfp>
     6cc:	c448                	sw	a0,12(s0)
     6ce:	4048                	lw	a0,4(s0)
     6d0:	4601                	li	a2,0
     6d2:	4591                	li	a1,4
     6d4:	35dd                	jal	5ba <std>
     6d6:	4408                	lw	a0,8(s0)
     6d8:	4605                	li	a2,1
     6da:	45a5                	li	a1,9
     6dc:	3df9                	jal	5ba <std>
     6de:	4448                	lw	a0,12(s0)
     6e0:	4609                	li	a2,2
     6e2:	45c9                	li	a1,18
     6e4:	3dd9                	jal	5ba <std>
     6e6:	4785                	li	a5,1
     6e8:	cc1c                	sw	a5,24(s0)
     6ea:	b765                	j	692 <__sinit+0xe>

000006ec <__sfp>:
     6ec:	1141                	addi	sp,sp,-16
     6ee:	c226                	sw	s1,4(sp)
     6f0:	c04a                	sw	s2,0(sp)
     6f2:	c606                	sw	ra,12(sp)
     6f4:	c422                	sw	s0,8(sp)
     6f6:	892a                	mv	s2,a0
     6f8:	3f95                	jal	66c <__sfp_lock_acquire>
     6fa:	8101a483          	lw	s1,-2032(gp) # 20000070 <_global_impure_ptr>
     6fe:	4c9c                	lw	a5,24(s1)
     700:	e399                	bnez	a5,706 <__sfp+0x1a>
     702:	8526                	mv	a0,s1
     704:	3741                	jal	684 <__sinit>
     706:	04848493          	addi	s1,s1,72
     70a:	4480                	lw	s0,8(s1)
     70c:	40dc                	lw	a5,4(s1)
     70e:	17fd                	addi	a5,a5,-1
     710:	0007d663          	bgez	a5,71c <__sfp+0x30>
     714:	409c                	lw	a5,0(s1)
     716:	c3b5                	beqz	a5,77a <__sfp+0x8e>
     718:	4084                	lw	s1,0(s1)
     71a:	bfc5                	j	70a <__sfp+0x1e>
     71c:	00c41703          	lh	a4,12(s0)
     720:	eb31                	bnez	a4,774 <__sfp+0x88>
     722:	77c1                	lui	a5,0xffff0
     724:	0785                	addi	a5,a5,1 # ffff0001 <_eusrstack+0xdffeb001>
     726:	c45c                	sw	a5,12(s0)
     728:	05840513          	addi	a0,s0,88
     72c:	06042223          	sw	zero,100(s0)
     730:	20e1                	jal	7f8 <__retarget_lock_init_recursive>
     732:	3781                	jal	672 <__sfp_lock_release>
     734:	4621                	li	a2,8
     736:	00042023          	sw	zero,0(s0)
     73a:	00042423          	sw	zero,8(s0)
     73e:	00042223          	sw	zero,4(s0)
     742:	00042823          	sw	zero,16(s0)
     746:	00042a23          	sw	zero,20(s0)
     74a:	00042c23          	sw	zero,24(s0)
     74e:	4581                	li	a1,0
     750:	05c40513          	addi	a0,s0,92
     754:	3275                	jal	100 <memset>
     756:	02042a23          	sw	zero,52(s0)
     75a:	02042c23          	sw	zero,56(s0)
     75e:	04042423          	sw	zero,72(s0)
     762:	04042623          	sw	zero,76(s0)
     766:	40b2                	lw	ra,12(sp)
     768:	8522                	mv	a0,s0
     76a:	4422                	lw	s0,8(sp)
     76c:	4492                	lw	s1,4(sp)
     76e:	4902                	lw	s2,0(sp)
     770:	0141                	addi	sp,sp,16
     772:	8082                	ret
     774:	06840413          	addi	s0,s0,104
     778:	bf59                	j	70e <__sfp+0x22>
     77a:	4591                	li	a1,4
     77c:	854a                	mv	a0,s2
     77e:	356d                	jal	628 <__sfmoreglue>
     780:	c088                	sw	a0,0(s1)
     782:	842a                	mv	s0,a0
     784:	f951                	bnez	a0,718 <__sfp+0x2c>
     786:	35f5                	jal	672 <__sfp_lock_release>
     788:	47b1                	li	a5,12
     78a:	00f92023          	sw	a5,0(s2)
     78e:	bfe1                	j	766 <__sfp+0x7a>

00000790 <_fwalk_reent>:
     790:	7179                	addi	sp,sp,-48
     792:	d422                	sw	s0,40(sp)
     794:	d04a                	sw	s2,32(sp)
     796:	ce4e                	sw	s3,28(sp)
     798:	cc52                	sw	s4,24(sp)
     79a:	c85a                	sw	s6,16(sp)
     79c:	c65e                	sw	s7,12(sp)
     79e:	d606                	sw	ra,44(sp)
     7a0:	d226                	sw	s1,36(sp)
     7a2:	ca56                	sw	s5,20(sp)
     7a4:	892a                	mv	s2,a0
     7a6:	8a2e                	mv	s4,a1
     7a8:	04850413          	addi	s0,a0,72
     7ac:	4981                	li	s3,0
     7ae:	4b05                	li	s6,1
     7b0:	5bfd                	li	s7,-1
     7b2:	4404                	lw	s1,8(s0)
     7b4:	00442a83          	lw	s5,4(s0)
     7b8:	1afd                	addi	s5,s5,-1
     7ba:	020ad063          	bgez	s5,7da <_fwalk_reent+0x4a>
     7be:	4000                	lw	s0,0(s0)
     7c0:	f86d                	bnez	s0,7b2 <_fwalk_reent+0x22>
     7c2:	50b2                	lw	ra,44(sp)
     7c4:	5422                	lw	s0,40(sp)
     7c6:	5492                	lw	s1,36(sp)
     7c8:	5902                	lw	s2,32(sp)
     7ca:	4a62                	lw	s4,24(sp)
     7cc:	4ad2                	lw	s5,20(sp)
     7ce:	4b42                	lw	s6,16(sp)
     7d0:	4bb2                	lw	s7,12(sp)
     7d2:	854e                	mv	a0,s3
     7d4:	49f2                	lw	s3,28(sp)
     7d6:	6145                	addi	sp,sp,48
     7d8:	8082                	ret
     7da:	24de                	.2byte	0x24de
     7dc:	00fb7b63          	bgeu	s6,a5,7f2 <_fwalk_reent+0x62>
     7e0:	00e49783          	lh	a5,14(s1)
     7e4:	01778763          	beq	a5,s7,7f2 <_fwalk_reent+0x62>
     7e8:	85a6                	mv	a1,s1
     7ea:	854a                	mv	a0,s2
     7ec:	9a02                	jalr	s4
     7ee:	00a9e9b3          	or	s3,s3,a0
     7f2:	06848493          	addi	s1,s1,104
     7f6:	b7c9                	j	7b8 <_fwalk_reent+0x28>

000007f8 <__retarget_lock_init_recursive>:
     7f8:	8082                	ret

000007fa <__retarget_lock_acquire_recursive>:
     7fa:	8082                	ret

000007fc <__retarget_lock_release_recursive>:
     7fc:	8082                	ret

000007fe <sbrk_aligned>:
     7fe:	1141                	addi	sp,sp,-16
     800:	c04a                	sw	s2,0(sp)
     802:	82818913          	addi	s2,gp,-2008 # 20000088 <__malloc_sbrk_start>
     806:	00092783          	lw	a5,0(s2)
     80a:	c422                	sw	s0,8(sp)
     80c:	c226                	sw	s1,4(sp)
     80e:	c606                	sw	ra,12(sp)
     810:	84aa                	mv	s1,a0
     812:	842e                	mv	s0,a1
     814:	e789                	bnez	a5,81e <__stack_size+0x1e>
     816:	4581                	li	a1,0
     818:	219d                	jal	c7e <_sbrk_r>
     81a:	00a92023          	sw	a0,0(s2)
     81e:	85a2                	mv	a1,s0
     820:	8526                	mv	a0,s1
     822:	29b1                	jal	c7e <_sbrk_r>
     824:	597d                	li	s2,-1
     826:	01251a63          	bne	a0,s2,83a <__stack_size+0x3a>
     82a:	547d                	li	s0,-1
     82c:	40b2                	lw	ra,12(sp)
     82e:	8522                	mv	a0,s0
     830:	4422                	lw	s0,8(sp)
     832:	4492                	lw	s1,4(sp)
     834:	4902                	lw	s2,0(sp)
     836:	0141                	addi	sp,sp,16
     838:	8082                	ret
     83a:	00350413          	addi	s0,a0,3
     83e:	9871                	andi	s0,s0,-4
     840:	fe8506e3          	beq	a0,s0,82c <__stack_size+0x2c>
     844:	40a405b3          	sub	a1,s0,a0
     848:	8526                	mv	a0,s1
     84a:	2915                	jal	c7e <_sbrk_r>
     84c:	ff2510e3          	bne	a0,s2,82c <__stack_size+0x2c>
     850:	bfe9                	j	82a <__stack_size+0x2a>

00000852 <_malloc_r>:
     852:	1101                	addi	sp,sp,-32
     854:	ca26                	sw	s1,20(sp)
     856:	00358493          	addi	s1,a1,3
     85a:	98f1                	andi	s1,s1,-4
     85c:	c84a                	sw	s2,16(sp)
     85e:	ce06                	sw	ra,28(sp)
     860:	cc22                	sw	s0,24(sp)
     862:	c64e                	sw	s3,12(sp)
     864:	04a1                	addi	s1,s1,8
     866:	47b1                	li	a5,12
     868:	892a                	mv	s2,a0
     86a:	06f4f463          	bgeu	s1,a5,8d2 <_malloc_r+0x80>
     86e:	44b1                	li	s1,12
     870:	06b4e363          	bltu	s1,a1,8d6 <_malloc_r+0x84>
     874:	854a                	mv	a0,s2
     876:	1cb000ef          	jal	ra,1240 <__malloc_lock>
     87a:	82c18993          	addi	s3,gp,-2004 # 2000008c <__malloc_free_list>
     87e:	0009a783          	lw	a5,0(s3)
     882:	843e                	mv	s0,a5
     884:	e425                	bnez	s0,8ec <_malloc_r+0x9a>
     886:	85a6                	mv	a1,s1
     888:	854a                	mv	a0,s2
     88a:	3f95                	jal	7fe <sbrk_aligned>
     88c:	57fd                	li	a5,-1
     88e:	842a                	mv	s0,a0
     890:	0cf51663          	bne	a0,a5,95c <_malloc_r+0x10a>
     894:	0009a403          	lw	s0,0(s3)
     898:	87a2                	mv	a5,s0
     89a:	e7dd                	bnez	a5,948 <_malloc_r+0xf6>
     89c:	00042983          	lw	s3,0(s0)
     8a0:	4581                	li	a1,0
     8a2:	854a                	mv	a0,s2
     8a4:	99a2                	add	s3,s3,s0
     8a6:	2ee1                	jal	c7e <_sbrk_r>
     8a8:	0aa99363          	bne	s3,a0,94e <_malloc_r+0xfc>
     8ac:	401c                	lw	a5,0(s0)
     8ae:	048d                	addi	s1,s1,3
     8b0:	8c9d                	sub	s1,s1,a5
     8b2:	98f1                	andi	s1,s1,-4
     8b4:	04a1                	addi	s1,s1,8
     8b6:	47b1                	li	a5,12
     8b8:	00f4f363          	bgeu	s1,a5,8be <_malloc_r+0x6c>
     8bc:	44b1                	li	s1,12
     8be:	85a6                	mv	a1,s1
     8c0:	854a                	mv	a0,s2
     8c2:	3f35                	jal	7fe <sbrk_aligned>
     8c4:	57fd                	li	a5,-1
     8c6:	08f50463          	beq	a0,a5,94e <_malloc_r+0xfc>
     8ca:	401c                	lw	a5,0(s0)
     8cc:	97a6                	add	a5,a5,s1
     8ce:	c01c                	sw	a5,0(s0)
     8d0:	a83d                	j	90e <_malloc_r+0xbc>
     8d2:	f804dfe3          	bgez	s1,870 <_malloc_r+0x1e>
     8d6:	47b1                	li	a5,12
     8d8:	00f92023          	sw	a5,0(s2)
     8dc:	4501                	li	a0,0
     8de:	40f2                	lw	ra,28(sp)
     8e0:	4462                	lw	s0,24(sp)
     8e2:	44d2                	lw	s1,20(sp)
     8e4:	4942                	lw	s2,16(sp)
     8e6:	49b2                	lw	s3,12(sp)
     8e8:	6105                	addi	sp,sp,32
     8ea:	8082                	ret
     8ec:	4014                	lw	a3,0(s0)
     8ee:	8e85                	sub	a3,a3,s1
     8f0:	0406c963          	bltz	a3,942 <_malloc_r+0xf0>
     8f4:	472d                	li	a4,11
     8f6:	02d77e63          	bgeu	a4,a3,932 <_malloc_r+0xe0>
     8fa:	c004                	sw	s1,0(s0)
     8fc:	00940733          	add	a4,s0,s1
     900:	02879763          	bne	a5,s0,92e <_malloc_r+0xdc>
     904:	00e9a023          	sw	a4,0(s3)
     908:	405c                	lw	a5,4(s0)
     90a:	c314                	sw	a3,0(a4)
     90c:	c35c                	sw	a5,4(a4)
     90e:	854a                	mv	a0,s2
     910:	139000ef          	jal	ra,1248 <__malloc_unlock>
     914:	00b40513          	addi	a0,s0,11
     918:	00440793          	addi	a5,s0,4
     91c:	9961                	andi	a0,a0,-8
     91e:	40f50733          	sub	a4,a0,a5
     922:	faf50ee3          	beq	a0,a5,8de <_malloc_r+0x8c>
     926:	943a                	add	s0,s0,a4
     928:	8f89                	sub	a5,a5,a0
     92a:	c01c                	sw	a5,0(s0)
     92c:	bf4d                	j	8de <_malloc_r+0x8c>
     92e:	c3d8                	sw	a4,4(a5)
     930:	bfe1                	j	908 <_malloc_r+0xb6>
     932:	4058                	lw	a4,4(s0)
     934:	00879563          	bne	a5,s0,93e <_malloc_r+0xec>
     938:	00e9a023          	sw	a4,0(s3)
     93c:	bfc9                	j	90e <_malloc_r+0xbc>
     93e:	c3d8                	sw	a4,4(a5)
     940:	b7f9                	j	90e <_malloc_r+0xbc>
     942:	87a2                	mv	a5,s0
     944:	4040                	lw	s0,4(s0)
     946:	bf3d                	j	884 <_malloc_r+0x32>
     948:	843e                	mv	s0,a5
     94a:	43dc                	lw	a5,4(a5)
     94c:	b7b9                	j	89a <_malloc_r+0x48>
     94e:	47b1                	li	a5,12
     950:	00f92023          	sw	a5,0(s2)
     954:	854a                	mv	a0,s2
     956:	0f3000ef          	jal	ra,1248 <__malloc_unlock>
     95a:	b749                	j	8dc <_malloc_r+0x8a>
     95c:	c104                	sw	s1,0(a0)
     95e:	bf45                	j	90e <_malloc_r+0xbc>

00000960 <__sfputc_r>:
     960:	461c                	lw	a5,8(a2)
     962:	17fd                	addi	a5,a5,-1
     964:	c61c                	sw	a5,8(a2)
     966:	0007d963          	bgez	a5,978 <__sfputc_r+0x18>
     96a:	4e18                	lw	a4,24(a2)
     96c:	00e7c563          	blt	a5,a4,976 <__sfputc_r+0x16>
     970:	47a9                	li	a5,10
     972:	00f59363          	bne	a1,a5,978 <__sfputc_r+0x18>
     976:	aef1                	j	d52 <__swbuf_r>
     978:	421c                	lw	a5,0(a2)
     97a:	852e                	mv	a0,a1
     97c:	00178713          	addi	a4,a5,1
     980:	c218                	sw	a4,0(a2)
     982:	a38c                	.2byte	0xa38c
     984:	8082                	ret

00000986 <__sfputs_r>:
     986:	1101                	addi	sp,sp,-32
     988:	cc22                	sw	s0,24(sp)
     98a:	ca26                	sw	s1,20(sp)
     98c:	c84a                	sw	s2,16(sp)
     98e:	c64e                	sw	s3,12(sp)
     990:	c452                	sw	s4,8(sp)
     992:	ce06                	sw	ra,28(sp)
     994:	892a                	mv	s2,a0
     996:	89ae                	mv	s3,a1
     998:	8432                	mv	s0,a2
     99a:	00d604b3          	add	s1,a2,a3
     99e:	5a7d                	li	s4,-1
     9a0:	00941463          	bne	s0,s1,9a8 <__sfputs_r+0x22>
     9a4:	4501                	li	a0,0
     9a6:	a801                	j	9b6 <__sfputs_r+0x30>
     9a8:	200c                	.2byte	0x200c
     9aa:	864e                	mv	a2,s3
     9ac:	854a                	mv	a0,s2
     9ae:	3f4d                	jal	960 <__sfputc_r>
     9b0:	0405                	addi	s0,s0,1
     9b2:	ff4517e3          	bne	a0,s4,9a0 <__sfputs_r+0x1a>
     9b6:	40f2                	lw	ra,28(sp)
     9b8:	4462                	lw	s0,24(sp)
     9ba:	44d2                	lw	s1,20(sp)
     9bc:	4942                	lw	s2,16(sp)
     9be:	49b2                	lw	s3,12(sp)
     9c0:	4a22                	lw	s4,8(sp)
     9c2:	6105                	addi	sp,sp,32
     9c4:	8082                	ret

000009c6 <_vfiprintf_r>:
     9c6:	7135                	addi	sp,sp,-160
     9c8:	cd22                	sw	s0,152(sp)
     9ca:	cb26                	sw	s1,148(sp)
     9cc:	c94a                	sw	s2,144(sp)
     9ce:	c74e                	sw	s3,140(sp)
     9d0:	cf06                	sw	ra,156(sp)
     9d2:	c552                	sw	s4,136(sp)
     9d4:	c356                	sw	s5,132(sp)
     9d6:	c15a                	sw	s6,128(sp)
     9d8:	dede                	sw	s7,124(sp)
     9da:	dce2                	sw	s8,120(sp)
     9dc:	dae6                	sw	s9,116(sp)
     9de:	89aa                	mv	s3,a0
     9e0:	842e                	mv	s0,a1
     9e2:	8932                	mv	s2,a2
     9e4:	84b6                	mv	s1,a3
     9e6:	c501                	beqz	a0,9ee <_vfiprintf_r+0x28>
     9e8:	4d1c                	lw	a5,24(a0)
     9ea:	e391                	bnez	a5,9ee <_vfiprintf_r+0x28>
     9ec:	3961                	jal	684 <__sinit>
     9ee:	00001797          	auipc	a5,0x1
     9f2:	da278793          	addi	a5,a5,-606 # 1790 <__sf_fake_stdin>
     9f6:	04f41763          	bne	s0,a5,a44 <_vfiprintf_r+0x7e>
     9fa:	0049a403          	lw	s0,4(s3)
     9fe:	507c                	lw	a5,100(s0)
     a00:	8b85                	andi	a5,a5,1
     a02:	e799                	bnez	a5,a10 <_vfiprintf_r+0x4a>
     a04:	245e                	.2byte	0x245e
     a06:	2007f793          	andi	a5,a5,512
     a0a:	e399                	bnez	a5,a10 <_vfiprintf_r+0x4a>
     a0c:	4c28                	lw	a0,88(s0)
     a0e:	33f5                	jal	7fa <__retarget_lock_acquire_recursive>
     a10:	245e                	.2byte	0x245e
     a12:	8ba1                	andi	a5,a5,8
     a14:	c399                	beqz	a5,a1a <_vfiprintf_r+0x54>
     a16:	481c                	lw	a5,16(s0)
     a18:	efb9                	bnez	a5,a76 <_vfiprintf_r+0xb0>
     a1a:	85a2                	mv	a1,s0
     a1c:	854e                	mv	a0,s3
     a1e:	2939                	jal	e3c <__swsetup_r>
     a20:	c939                	beqz	a0,a76 <_vfiprintf_r+0xb0>
     a22:	507c                	lw	a5,100(s0)
     a24:	8b85                	andi	a5,a5,1
     a26:	c3a9                	beqz	a5,a68 <_vfiprintf_r+0xa2>
     a28:	557d                	li	a0,-1
     a2a:	40fa                	lw	ra,156(sp)
     a2c:	446a                	lw	s0,152(sp)
     a2e:	44da                	lw	s1,148(sp)
     a30:	494a                	lw	s2,144(sp)
     a32:	49ba                	lw	s3,140(sp)
     a34:	4a2a                	lw	s4,136(sp)
     a36:	4a9a                	lw	s5,132(sp)
     a38:	4b0a                	lw	s6,128(sp)
     a3a:	5bf6                	lw	s7,124(sp)
     a3c:	5c66                	lw	s8,120(sp)
     a3e:	5cd6                	lw	s9,116(sp)
     a40:	610d                	addi	sp,sp,160
     a42:	8082                	ret
     a44:	00001797          	auipc	a5,0x1
     a48:	d2c78793          	addi	a5,a5,-724 # 1770 <__sf_fake_stdout>
     a4c:	00f41563          	bne	s0,a5,a56 <_vfiprintf_r+0x90>
     a50:	0089a403          	lw	s0,8(s3)
     a54:	b76d                	j	9fe <_vfiprintf_r+0x38>
     a56:	00001797          	auipc	a5,0x1
     a5a:	cfa78793          	addi	a5,a5,-774 # 1750 <__sf_fake_stderr>
     a5e:	faf410e3          	bne	s0,a5,9fe <_vfiprintf_r+0x38>
     a62:	00c9a403          	lw	s0,12(s3)
     a66:	bf61                	j	9fe <_vfiprintf_r+0x38>
     a68:	245e                	.2byte	0x245e
     a6a:	2007f793          	andi	a5,a5,512
     a6e:	ffcd                	bnez	a5,a28 <_vfiprintf_r+0x62>
     a70:	4c28                	lw	a0,88(s0)
     a72:	3369                	jal	7fc <__retarget_lock_release_recursive>
     a74:	bf55                	j	a28 <_vfiprintf_r+0x62>
     a76:	02000793          	li	a5,32
     a7a:	02f104a3          	sb	a5,41(sp)
     a7e:	03000793          	li	a5,48
     a82:	d202                	sw	zero,36(sp)
     a84:	02f10523          	sb	a5,42(sp)
     a88:	c626                	sw	s1,12(sp)
     a8a:	02500b93          	li	s7,37
     a8e:	00001a97          	auipc	s5,0x1
     a92:	d22a8a93          	addi	s5,s5,-734 # 17b0 <__sf_fake_stdin+0x20>
     a96:	4c05                	li	s8,1
     a98:	4b29                	li	s6,10
     a9a:	84ca                	mv	s1,s2
     a9c:	209c                	.2byte	0x209c
     a9e:	c399                	beqz	a5,aa4 <_vfiprintf_r+0xde>
     aa0:	09779a63          	bne	a5,s7,b34 <_vfiprintf_r+0x16e>
     aa4:	41248cb3          	sub	s9,s1,s2
     aa8:	01248d63          	beq	s1,s2,ac2 <_vfiprintf_r+0xfc>
     aac:	86e6                	mv	a3,s9
     aae:	864a                	mv	a2,s2
     ab0:	85a2                	mv	a1,s0
     ab2:	854e                	mv	a0,s3
     ab4:	3dc9                	jal	986 <__sfputs_r>
     ab6:	57fd                	li	a5,-1
     ab8:	18f50863          	beq	a0,a5,c48 <_vfiprintf_r+0x282>
     abc:	5792                	lw	a5,36(sp)
     abe:	97e6                	add	a5,a5,s9
     ac0:	d23e                	sw	a5,36(sp)
     ac2:	209c                	.2byte	0x209c
     ac4:	18078263          	beqz	a5,c48 <_vfiprintf_r+0x282>
     ac8:	57fd                	li	a5,-1
     aca:	00148913          	addi	s2,s1,1
     ace:	c802                	sw	zero,16(sp)
     ad0:	ce02                	sw	zero,28(sp)
     ad2:	ca3e                	sw	a5,20(sp)
     ad4:	cc02                	sw	zero,24(sp)
     ad6:	040109a3          	sb	zero,83(sp)
     ada:	d482                	sw	zero,104(sp)
     adc:	00094583          	lbu	a1,0(s2)
     ae0:	4615                	li	a2,5
     ae2:	8556                	mv	a0,s5
     ae4:	744000ef          	jal	ra,1228 <memchr>
     ae8:	47c2                	lw	a5,16(sp)
     aea:	00190493          	addi	s1,s2,1
     aee:	e529                	bnez	a0,b38 <_vfiprintf_r+0x172>
     af0:	0107f713          	andi	a4,a5,16
     af4:	c709                	beqz	a4,afe <_vfiprintf_r+0x138>
     af6:	02000713          	li	a4,32
     afa:	04e109a3          	sb	a4,83(sp)
     afe:	0087f713          	andi	a4,a5,8
     b02:	c709                	beqz	a4,b0c <_vfiprintf_r+0x146>
     b04:	02b00713          	li	a4,43
     b08:	04e109a3          	sb	a4,83(sp)
     b0c:	00094683          	lbu	a3,0(s2)
     b10:	02a00713          	li	a4,42
     b14:	02e68a63          	beq	a3,a4,b48 <_vfiprintf_r+0x182>
     b18:	47f2                	lw	a5,28(sp)
     b1a:	84ca                	mv	s1,s2
     b1c:	4681                	li	a3,0
     b1e:	4625                	li	a2,9
     b20:	2098                	.2byte	0x2098
     b22:	00148593          	addi	a1,s1,1
     b26:	fd070713          	addi	a4,a4,-48 # 1ffd0 <_data_lma+0x1e78c>
     b2a:	06e67363          	bgeu	a2,a4,b90 <_vfiprintf_r+0x1ca>
     b2e:	c68d                	beqz	a3,b58 <_vfiprintf_r+0x192>
     b30:	ce3e                	sw	a5,28(sp)
     b32:	a01d                	j	b58 <_vfiprintf_r+0x192>
     b34:	0485                	addi	s1,s1,1
     b36:	b79d                	j	a9c <_vfiprintf_r+0xd6>
     b38:	41550533          	sub	a0,a0,s5
     b3c:	00ac1533          	sll	a0,s8,a0
     b40:	8fc9                	or	a5,a5,a0
     b42:	c83e                	sw	a5,16(sp)
     b44:	8926                	mv	s2,s1
     b46:	bf59                	j	adc <_vfiprintf_r+0x116>
     b48:	4732                	lw	a4,12(sp)
     b4a:	00470693          	addi	a3,a4,4
     b4e:	4318                	lw	a4,0(a4)
     b50:	c636                	sw	a3,12(sp)
     b52:	02074863          	bltz	a4,b82 <_vfiprintf_r+0x1bc>
     b56:	ce3a                	sw	a4,28(sp)
     b58:	2098                	.2byte	0x2098
     b5a:	02e00793          	li	a5,46
     b5e:	04f71c63          	bne	a4,a5,bb6 <_vfiprintf_r+0x1f0>
     b62:	3098                	.2byte	0x3098
     b64:	02a00793          	li	a5,42
     b68:	02f71a63          	bne	a4,a5,b9c <_vfiprintf_r+0x1d6>
     b6c:	47b2                	lw	a5,12(sp)
     b6e:	0489                	addi	s1,s1,2
     b70:	00478713          	addi	a4,a5,4
     b74:	439c                	lw	a5,0(a5)
     b76:	c63a                	sw	a4,12(sp)
     b78:	0007d363          	bgez	a5,b7e <_vfiprintf_r+0x1b8>
     b7c:	57fd                	li	a5,-1
     b7e:	ca3e                	sw	a5,20(sp)
     b80:	a81d                	j	bb6 <_vfiprintf_r+0x1f0>
     b82:	40e00733          	neg	a4,a4
     b86:	0027e793          	ori	a5,a5,2
     b8a:	ce3a                	sw	a4,28(sp)
     b8c:	c83e                	sw	a5,16(sp)
     b8e:	b7e9                	j	b58 <_vfiprintf_r+0x192>
     b90:	036787b3          	mul	a5,a5,s6
     b94:	84ae                	mv	s1,a1
     b96:	4685                	li	a3,1
     b98:	97ba                	add	a5,a5,a4
     b9a:	b759                	j	b20 <_vfiprintf_r+0x15a>
     b9c:	0485                	addi	s1,s1,1
     b9e:	ca02                	sw	zero,20(sp)
     ba0:	4681                	li	a3,0
     ba2:	4781                	li	a5,0
     ba4:	4625                	li	a2,9
     ba6:	2098                	.2byte	0x2098
     ba8:	00148593          	addi	a1,s1,1
     bac:	fd070713          	addi	a4,a4,-48
     bb0:	06e67263          	bgeu	a2,a4,c14 <_vfiprintf_r+0x24e>
     bb4:	f6e9                	bnez	a3,b7e <_vfiprintf_r+0x1b8>
     bb6:	208c                	.2byte	0x208c
     bb8:	460d                	li	a2,3
     bba:	00001517          	auipc	a0,0x1
     bbe:	bfe50513          	addi	a0,a0,-1026 # 17b8 <__sf_fake_stdin+0x28>
     bc2:	259d                	jal	1228 <memchr>
     bc4:	cd11                	beqz	a0,be0 <_vfiprintf_r+0x21a>
     bc6:	00001797          	auipc	a5,0x1
     bca:	bf278793          	addi	a5,a5,-1038 # 17b8 <__sf_fake_stdin+0x28>
     bce:	8d1d                	sub	a0,a0,a5
     bd0:	47c2                	lw	a5,16(sp)
     bd2:	04000713          	li	a4,64
     bd6:	00a71733          	sll	a4,a4,a0
     bda:	8fd9                	or	a5,a5,a4
     bdc:	0485                	addi	s1,s1,1
     bde:	c83e                	sw	a5,16(sp)
     be0:	208c                	.2byte	0x208c
     be2:	4619                	li	a2,6
     be4:	00001517          	auipc	a0,0x1
     be8:	bd850513          	addi	a0,a0,-1064 # 17bc <__sf_fake_stdin+0x2c>
     bec:	00148913          	addi	s2,s1,1
     bf0:	02b10423          	sb	a1,40(sp)
     bf4:	2d15                	jal	1228 <memchr>
     bf6:	c92d                	beqz	a0,c68 <_vfiprintf_r+0x2a2>
     bf8:	00000793          	li	a5,0
     bfc:	e795                	bnez	a5,c28 <_vfiprintf_r+0x262>
     bfe:	4742                	lw	a4,16(sp)
     c00:	47b2                	lw	a5,12(sp)
     c02:	10077713          	andi	a4,a4,256
     c06:	cf09                	beqz	a4,c20 <_vfiprintf_r+0x25a>
     c08:	0791                	addi	a5,a5,4
     c0a:	c63e                	sw	a5,12(sp)
     c0c:	5792                	lw	a5,36(sp)
     c0e:	97d2                	add	a5,a5,s4
     c10:	d23e                	sw	a5,36(sp)
     c12:	b561                	j	a9a <_vfiprintf_r+0xd4>
     c14:	036787b3          	mul	a5,a5,s6
     c18:	84ae                	mv	s1,a1
     c1a:	4685                	li	a3,1
     c1c:	97ba                	add	a5,a5,a4
     c1e:	b761                	j	ba6 <_vfiprintf_r+0x1e0>
     c20:	079d                	addi	a5,a5,7
     c22:	9be1                	andi	a5,a5,-8
     c24:	07a1                	addi	a5,a5,8
     c26:	b7d5                	j	c0a <_vfiprintf_r+0x244>
     c28:	0078                	addi	a4,sp,12
     c2a:	00000697          	auipc	a3,0x0
     c2e:	d5c68693          	addi	a3,a3,-676 # 986 <__sfputs_r>
     c32:	8622                	mv	a2,s0
     c34:	080c                	addi	a1,sp,16
     c36:	854e                	mv	a0,s3
     c38:	00000097          	auipc	ra,0x0
     c3c:	000000e7          	jalr	zero # 0 <_sinit>
     c40:	57fd                	li	a5,-1
     c42:	8a2a                	mv	s4,a0
     c44:	fcf514e3          	bne	a0,a5,c0c <_vfiprintf_r+0x246>
     c48:	507c                	lw	a5,100(s0)
     c4a:	8b85                	andi	a5,a5,1
     c4c:	e799                	bnez	a5,c5a <_vfiprintf_r+0x294>
     c4e:	245e                	.2byte	0x245e
     c50:	2007f793          	andi	a5,a5,512
     c54:	e399                	bnez	a5,c5a <_vfiprintf_r+0x294>
     c56:	4c28                	lw	a0,88(s0)
     c58:	3655                	jal	7fc <__retarget_lock_release_recursive>
     c5a:	245e                	.2byte	0x245e
     c5c:	0407f793          	andi	a5,a5,64
     c60:	dc0794e3          	bnez	a5,a28 <_vfiprintf_r+0x62>
     c64:	5512                	lw	a0,36(sp)
     c66:	b3d1                	j	a2a <_vfiprintf_r+0x64>
     c68:	0078                	addi	a4,sp,12
     c6a:	00000697          	auipc	a3,0x0
     c6e:	d1c68693          	addi	a3,a3,-740 # 986 <__sfputs_r>
     c72:	8622                	mv	a2,s0
     c74:	080c                	addi	a1,sp,16
     c76:	854e                	mv	a0,s3
     c78:	786000ef          	jal	ra,13fe <_printf_i>
     c7c:	b7d1                	j	c40 <_vfiprintf_r+0x27a>

00000c7e <_sbrk_r>:
     c7e:	1141                	addi	sp,sp,-16
     c80:	c422                	sw	s0,8(sp)
     c82:	842a                	mv	s0,a0
     c84:	852e                	mv	a0,a1
     c86:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
     c8a:	c606                	sw	ra,12(sp)
     c8c:	dc8ff0ef          	jal	ra,254 <_sbrk>
     c90:	57fd                	li	a5,-1
     c92:	00f51663          	bne	a0,a5,c9e <_sbrk_r+0x20>
     c96:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
     c9a:	c391                	beqz	a5,c9e <_sbrk_r+0x20>
     c9c:	c01c                	sw	a5,0(s0)
     c9e:	40b2                	lw	ra,12(sp)
     ca0:	4422                	lw	s0,8(sp)
     ca2:	0141                	addi	sp,sp,16
     ca4:	8082                	ret

00000ca6 <__sread>:
     ca6:	1141                	addi	sp,sp,-16
     ca8:	c422                	sw	s0,8(sp)
     caa:	842e                	mv	s0,a1
     cac:	00e59583          	lh	a1,14(a1)
     cb0:	c606                	sw	ra,12(sp)
     cb2:	1c5000ef          	jal	ra,1676 <_read_r>
     cb6:	00054963          	bltz	a0,cc8 <__sread+0x22>
     cba:	487c                	lw	a5,84(s0)
     cbc:	97aa                	add	a5,a5,a0
     cbe:	c87c                	sw	a5,84(s0)
     cc0:	40b2                	lw	ra,12(sp)
     cc2:	4422                	lw	s0,8(sp)
     cc4:	0141                	addi	sp,sp,16
     cc6:	8082                	ret
     cc8:	245e                	.2byte	0x245e
     cca:	777d                	lui	a4,0xfffff
     ccc:	177d                	addi	a4,a4,-1 # ffffefff <_eusrstack+0xdfff9fff>
     cce:	8ff9                	and	a5,a5,a4
     cd0:	a45e                	.2byte	0xa45e
     cd2:	b7fd                	j	cc0 <__sread+0x1a>

00000cd4 <__swrite>:
     cd4:	25de                	.2byte	0x25de
     cd6:	1101                	addi	sp,sp,-32
     cd8:	cc22                	sw	s0,24(sp)
     cda:	ca26                	sw	s1,20(sp)
     cdc:	c84a                	sw	s2,16(sp)
     cde:	c64e                	sw	s3,12(sp)
     ce0:	ce06                	sw	ra,28(sp)
     ce2:	1007f793          	andi	a5,a5,256
     ce6:	84aa                	mv	s1,a0
     ce8:	842e                	mv	s0,a1
     cea:	8932                	mv	s2,a2
     cec:	89b6                	mv	s3,a3
     cee:	c791                	beqz	a5,cfa <__swrite+0x26>
     cf0:	00e59583          	lh	a1,14(a1)
     cf4:	4689                	li	a3,2
     cf6:	4601                	li	a2,0
     cf8:	2929                	jal	1112 <_lseek_r>
     cfa:	245e                	.2byte	0x245e
     cfc:	777d                	lui	a4,0xfffff
     cfe:	177d                	addi	a4,a4,-1 # ffffefff <_eusrstack+0xdfff9fff>
     d00:	8ff9                	and	a5,a5,a4
     d02:	00e41583          	lh	a1,14(s0)
     d06:	a45e                	.2byte	0xa45e
     d08:	4462                	lw	s0,24(sp)
     d0a:	40f2                	lw	ra,28(sp)
     d0c:	86ce                	mv	a3,s3
     d0e:	864a                	mv	a2,s2
     d10:	49b2                	lw	s3,12(sp)
     d12:	4942                	lw	s2,16(sp)
     d14:	8526                	mv	a0,s1
     d16:	44d2                	lw	s1,20(sp)
     d18:	6105                	addi	sp,sp,32
     d1a:	a8dd                	j	e10 <_write_r>

00000d1c <__sseek>:
     d1c:	1141                	addi	sp,sp,-16
     d1e:	c422                	sw	s0,8(sp)
     d20:	842e                	mv	s0,a1
     d22:	00e59583          	lh	a1,14(a1)
     d26:	c606                	sw	ra,12(sp)
     d28:	26ed                	jal	1112 <_lseek_r>
     d2a:	577d                	li	a4,-1
     d2c:	245e                	.2byte	0x245e
     d2e:	00e51a63          	bne	a0,a4,d42 <__sseek+0x26>
     d32:	777d                	lui	a4,0xfffff
     d34:	177d                	addi	a4,a4,-1 # ffffefff <_eusrstack+0xdfff9fff>
     d36:	8ff9                	and	a5,a5,a4
     d38:	a45e                	.2byte	0xa45e
     d3a:	40b2                	lw	ra,12(sp)
     d3c:	4422                	lw	s0,8(sp)
     d3e:	0141                	addi	sp,sp,16
     d40:	8082                	ret
     d42:	6705                	lui	a4,0x1
     d44:	8fd9                	or	a5,a5,a4
     d46:	a45e                	.2byte	0xa45e
     d48:	c868                	sw	a0,84(s0)
     d4a:	bfc5                	j	d3a <__sseek+0x1e>

00000d4c <__sclose>:
     d4c:	00e59583          	lh	a1,14(a1)
     d50:	aaf1                	j	f2c <_close_r>

00000d52 <__swbuf_r>:
     d52:	1101                	addi	sp,sp,-32
     d54:	cc22                	sw	s0,24(sp)
     d56:	ca26                	sw	s1,20(sp)
     d58:	c84a                	sw	s2,16(sp)
     d5a:	ce06                	sw	ra,28(sp)
     d5c:	c64e                	sw	s3,12(sp)
     d5e:	84aa                	mv	s1,a0
     d60:	892e                	mv	s2,a1
     d62:	8432                	mv	s0,a2
     d64:	c509                	beqz	a0,d6e <__swbuf_r+0x1c>
     d66:	4d1c                	lw	a5,24(a0)
     d68:	e399                	bnez	a5,d6e <__swbuf_r+0x1c>
     d6a:	91bff0ef          	jal	ra,684 <__sinit>
     d6e:	00001797          	auipc	a5,0x1
     d72:	a2278793          	addi	a5,a5,-1502 # 1790 <__sf_fake_stdin>
     d76:	02f41763          	bne	s0,a5,da4 <__swbuf_r+0x52>
     d7a:	40c0                	lw	s0,4(s1)
     d7c:	4c1c                	lw	a5,24(s0)
     d7e:	c41c                	sw	a5,8(s0)
     d80:	245e                	.2byte	0x245e
     d82:	8ba1                	andi	a5,a5,8
     d84:	c399                	beqz	a5,d8a <__swbuf_r+0x38>
     d86:	481c                	lw	a5,16(s0)
     d88:	ef95                	bnez	a5,dc4 <__swbuf_r+0x72>
     d8a:	85a2                	mv	a1,s0
     d8c:	8526                	mv	a0,s1
     d8e:	207d                	jal	e3c <__swsetup_r>
     d90:	c915                	beqz	a0,dc4 <__swbuf_r+0x72>
     d92:	597d                	li	s2,-1
     d94:	40f2                	lw	ra,28(sp)
     d96:	4462                	lw	s0,24(sp)
     d98:	44d2                	lw	s1,20(sp)
     d9a:	49b2                	lw	s3,12(sp)
     d9c:	854a                	mv	a0,s2
     d9e:	4942                	lw	s2,16(sp)
     da0:	6105                	addi	sp,sp,32
     da2:	8082                	ret
     da4:	00001797          	auipc	a5,0x1
     da8:	9cc78793          	addi	a5,a5,-1588 # 1770 <__sf_fake_stdout>
     dac:	00f41463          	bne	s0,a5,db4 <__swbuf_r+0x62>
     db0:	4480                	lw	s0,8(s1)
     db2:	b7e9                	j	d7c <__swbuf_r+0x2a>
     db4:	00001797          	auipc	a5,0x1
     db8:	99c78793          	addi	a5,a5,-1636 # 1750 <__sf_fake_stderr>
     dbc:	fcf410e3          	bne	s0,a5,d7c <__swbuf_r+0x2a>
     dc0:	44c0                	lw	s0,12(s1)
     dc2:	bf6d                	j	d7c <__swbuf_r+0x2a>
     dc4:	481c                	lw	a5,16(s0)
     dc6:	4008                	lw	a0,0(s0)
     dc8:	0ff97993          	zext.b	s3,s2
     dcc:	0ff97913          	zext.b	s2,s2
     dd0:	8d1d                	sub	a0,a0,a5
     dd2:	485c                	lw	a5,20(s0)
     dd4:	00f54663          	blt	a0,a5,de0 <__swbuf_r+0x8e>
     dd8:	85a2                	mv	a1,s0
     dda:	8526                	mv	a0,s1
     ddc:	246d                	jal	1086 <_fflush_r>
     dde:	f955                	bnez	a0,d92 <__swbuf_r+0x40>
     de0:	441c                	lw	a5,8(s0)
     de2:	0505                	addi	a0,a0,1
     de4:	17fd                	addi	a5,a5,-1
     de6:	c41c                	sw	a5,8(s0)
     de8:	401c                	lw	a5,0(s0)
     dea:	00178713          	addi	a4,a5,1
     dee:	c018                	sw	a4,0(s0)
     df0:	01378023          	sb	s3,0(a5)
     df4:	485c                	lw	a5,20(s0)
     df6:	00a78863          	beq	a5,a0,e06 <__swbuf_r+0xb4>
     dfa:	245e                	.2byte	0x245e
     dfc:	8b85                	andi	a5,a5,1
     dfe:	dbd9                	beqz	a5,d94 <__swbuf_r+0x42>
     e00:	47a9                	li	a5,10
     e02:	f8f919e3          	bne	s2,a5,d94 <__swbuf_r+0x42>
     e06:	85a2                	mv	a1,s0
     e08:	8526                	mv	a0,s1
     e0a:	2cb5                	jal	1086 <_fflush_r>
     e0c:	d541                	beqz	a0,d94 <__swbuf_r+0x42>
     e0e:	b751                	j	d92 <__swbuf_r+0x40>

00000e10 <_write_r>:
     e10:	1141                	addi	sp,sp,-16
     e12:	c422                	sw	s0,8(sp)
     e14:	842a                	mv	s0,a0
     e16:	852e                	mv	a0,a1
     e18:	85b2                	mv	a1,a2
     e1a:	8636                	mv	a2,a3
     e1c:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
     e20:	c606                	sw	ra,12(sp)
     e22:	bc2ff0ef          	jal	ra,1e4 <_write>
     e26:	57fd                	li	a5,-1
     e28:	00f51663          	bne	a0,a5,e34 <_write_r+0x24>
     e2c:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
     e30:	c391                	beqz	a5,e34 <_write_r+0x24>
     e32:	c01c                	sw	a5,0(s0)
     e34:	40b2                	lw	ra,12(sp)
     e36:	4422                	lw	s0,8(sp)
     e38:	0141                	addi	sp,sp,16
     e3a:	8082                	ret

00000e3c <__swsetup_r>:
     e3c:	1141                	addi	sp,sp,-16
     e3e:	c422                	sw	s0,8(sp)
     e40:	c226                	sw	s1,4(sp)
     e42:	c04a                	sw	s2,0(sp)
     e44:	c606                	sw	ra,12(sp)
     e46:	8081a483          	lw	s1,-2040(gp) # 20000068 <_impure_ptr>
     e4a:	892a                	mv	s2,a0
     e4c:	842e                	mv	s0,a1
     e4e:	c491                	beqz	s1,e5a <__swsetup_r+0x1e>
     e50:	4c9c                	lw	a5,24(s1)
     e52:	e781                	bnez	a5,e5a <__swsetup_r+0x1e>
     e54:	8526                	mv	a0,s1
     e56:	82fff0ef          	jal	ra,684 <__sinit>
     e5a:	00001797          	auipc	a5,0x1
     e5e:	93678793          	addi	a5,a5,-1738 # 1790 <__sf_fake_stdin>
     e62:	02f41363          	bne	s0,a5,e88 <__swsetup_r+0x4c>
     e66:	40c0                	lw	s0,4(s1)
     e68:	00c41783          	lh	a5,12(s0)
     e6c:	0087f713          	andi	a4,a5,8
     e70:	e725                	bnez	a4,ed8 <__swsetup_r+0x9c>
     e72:	0107f713          	andi	a4,a5,16
     e76:	eb0d                	bnez	a4,ea8 <__swsetup_r+0x6c>
     e78:	4725                	li	a4,9
     e7a:	00e92023          	sw	a4,0(s2)
     e7e:	0407e793          	ori	a5,a5,64
     e82:	a45e                	.2byte	0xa45e
     e84:	557d                	li	a0,-1
     e86:	a071                	j	f12 <__swsetup_r+0xd6>
     e88:	00001797          	auipc	a5,0x1
     e8c:	8e878793          	addi	a5,a5,-1816 # 1770 <__sf_fake_stdout>
     e90:	00f41463          	bne	s0,a5,e98 <__swsetup_r+0x5c>
     e94:	4480                	lw	s0,8(s1)
     e96:	bfc9                	j	e68 <__swsetup_r+0x2c>
     e98:	00001797          	auipc	a5,0x1
     e9c:	8b878793          	addi	a5,a5,-1864 # 1750 <__sf_fake_stderr>
     ea0:	fcf414e3          	bne	s0,a5,e68 <__swsetup_r+0x2c>
     ea4:	44c0                	lw	s0,12(s1)
     ea6:	b7c9                	j	e68 <__swsetup_r+0x2c>
     ea8:	8b91                	andi	a5,a5,4
     eaa:	c39d                	beqz	a5,ed0 <__swsetup_r+0x94>
     eac:	584c                	lw	a1,52(s0)
     eae:	c989                	beqz	a1,ec0 <__swsetup_r+0x84>
     eb0:	04440793          	addi	a5,s0,68
     eb4:	00f58463          	beq	a1,a5,ebc <__swsetup_r+0x80>
     eb8:	854a                	mv	a0,s2
     eba:	2e59                	jal	1250 <_free_r>
     ebc:	02042a23          	sw	zero,52(s0)
     ec0:	245e                	.2byte	0x245e
     ec2:	00042223          	sw	zero,4(s0)
     ec6:	fdb7f793          	andi	a5,a5,-37
     eca:	a45e                	.2byte	0xa45e
     ecc:	481c                	lw	a5,16(s0)
     ece:	c01c                	sw	a5,0(s0)
     ed0:	245e                	.2byte	0x245e
     ed2:	0087e793          	ori	a5,a5,8
     ed6:	a45e                	.2byte	0xa45e
     ed8:	481c                	lw	a5,16(s0)
     eda:	eb99                	bnez	a5,ef0 <__swsetup_r+0xb4>
     edc:	245e                	.2byte	0x245e
     ede:	20000713          	li	a4,512
     ee2:	2807f793          	andi	a5,a5,640
     ee6:	00e78563          	beq	a5,a4,ef0 <__swsetup_r+0xb4>
     eea:	85a2                	mv	a1,s0
     eec:	854a                	mv	a0,s2
     eee:	245d                	jal	1194 <__smakebuf_r>
     ef0:	00c41783          	lh	a5,12(s0)
     ef4:	0017f713          	andi	a4,a5,1
     ef8:	c31d                	beqz	a4,f1e <__swsetup_r+0xe2>
     efa:	4858                	lw	a4,20(s0)
     efc:	00042423          	sw	zero,8(s0)
     f00:	40e00733          	neg	a4,a4
     f04:	cc18                	sw	a4,24(s0)
     f06:	4818                	lw	a4,16(s0)
     f08:	4501                	li	a0,0
     f0a:	e701                	bnez	a4,f12 <__swsetup_r+0xd6>
     f0c:	0807f713          	andi	a4,a5,128
     f10:	f73d                	bnez	a4,e7e <__swsetup_r+0x42>
     f12:	40b2                	lw	ra,12(sp)
     f14:	4422                	lw	s0,8(sp)
     f16:	4492                	lw	s1,4(sp)
     f18:	4902                	lw	s2,0(sp)
     f1a:	0141                	addi	sp,sp,16
     f1c:	8082                	ret
     f1e:	0027f713          	andi	a4,a5,2
     f22:	4681                	li	a3,0
     f24:	e311                	bnez	a4,f28 <__swsetup_r+0xec>
     f26:	4854                	lw	a3,20(s0)
     f28:	c414                	sw	a3,8(s0)
     f2a:	bff1                	j	f06 <__swsetup_r+0xca>

00000f2c <_close_r>:
     f2c:	1141                	addi	sp,sp,-16
     f2e:	c422                	sw	s0,8(sp)
     f30:	842a                	mv	s0,a0
     f32:	852e                	mv	a0,a1
     f34:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
     f38:	c606                	sw	ra,12(sp)
     f3a:	7b4000ef          	jal	ra,16ee <_close>
     f3e:	57fd                	li	a5,-1
     f40:	00f51663          	bne	a0,a5,f4c <_close_r+0x20>
     f44:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
     f48:	c391                	beqz	a5,f4c <_close_r+0x20>
     f4a:	c01c                	sw	a5,0(s0)
     f4c:	40b2                	lw	ra,12(sp)
     f4e:	4422                	lw	s0,8(sp)
     f50:	0141                	addi	sp,sp,16
     f52:	8082                	ret

00000f54 <__sflush_r>:
     f54:	00c59783          	lh	a5,12(a1)
     f58:	1101                	addi	sp,sp,-32
     f5a:	cc22                	sw	s0,24(sp)
     f5c:	ca26                	sw	s1,20(sp)
     f5e:	ce06                	sw	ra,28(sp)
     f60:	c84a                	sw	s2,16(sp)
     f62:	c64e                	sw	s3,12(sp)
     f64:	0087f713          	andi	a4,a5,8
     f68:	84aa                	mv	s1,a0
     f6a:	842e                	mv	s0,a1
     f6c:	e379                	bnez	a4,1032 <__sflush_r+0xde>
     f6e:	41d8                	lw	a4,4(a1)
     f70:	00e04563          	bgtz	a4,f7a <__sflush_r+0x26>
     f74:	41b8                	lw	a4,64(a1)
     f76:	08e05663          	blez	a4,1002 <__sflush_r+0xae>
     f7a:	5458                	lw	a4,44(s0)
     f7c:	c359                	beqz	a4,1002 <__sflush_r+0xae>
     f7e:	83b1                	srli	a5,a5,0xc
     f80:	0004a903          	lw	s2,0(s1)
     f84:	8b85                	andi	a5,a5,1
     f86:	0004a023          	sw	zero,0(s1)
     f8a:	500c                	lw	a1,32(s0)
     f8c:	cba9                	beqz	a5,fde <__sflush_r+0x8a>
     f8e:	4870                	lw	a2,84(s0)
     f90:	245e                	.2byte	0x245e
     f92:	8b91                	andi	a5,a5,4
     f94:	c799                	beqz	a5,fa2 <__sflush_r+0x4e>
     f96:	405c                	lw	a5,4(s0)
     f98:	8e1d                	sub	a2,a2,a5
     f9a:	585c                	lw	a5,52(s0)
     f9c:	c399                	beqz	a5,fa2 <__sflush_r+0x4e>
     f9e:	403c                	lw	a5,64(s0)
     fa0:	8e1d                	sub	a2,a2,a5
     fa2:	545c                	lw	a5,44(s0)
     fa4:	500c                	lw	a1,32(s0)
     fa6:	4681                	li	a3,0
     fa8:	8526                	mv	a0,s1
     faa:	9782                	jalr	a5
     fac:	57fd                	li	a5,-1
     fae:	04f50c63          	beq	a0,a5,1006 <__sflush_r+0xb2>
     fb2:	481c                	lw	a5,16(s0)
     fb4:	6705                	lui	a4,0x1
     fb6:	00042223          	sw	zero,4(s0)
     fba:	c01c                	sw	a5,0(s0)
     fbc:	245e                	.2byte	0x245e
     fbe:	8ff9                	and	a5,a5,a4
     fc0:	c391                	beqz	a5,fc4 <__sflush_r+0x70>
     fc2:	c868                	sw	a0,84(s0)
     fc4:	584c                	lw	a1,52(s0)
     fc6:	0124a023          	sw	s2,0(s1)
     fca:	cd85                	beqz	a1,1002 <__sflush_r+0xae>
     fcc:	04440793          	addi	a5,s0,68
     fd0:	00f58463          	beq	a1,a5,fd8 <__sflush_r+0x84>
     fd4:	8526                	mv	a0,s1
     fd6:	2cad                	jal	1250 <_free_r>
     fd8:	02042a23          	sw	zero,52(s0)
     fdc:	a01d                	j	1002 <__sflush_r+0xae>
     fde:	4601                	li	a2,0
     fe0:	4685                	li	a3,1
     fe2:	8526                	mv	a0,s1
     fe4:	9702                	jalr	a4
     fe6:	57fd                	li	a5,-1
     fe8:	862a                	mv	a2,a0
     fea:	faf513e3          	bne	a0,a5,f90 <__sflush_r+0x3c>
     fee:	409c                	lw	a5,0(s1)
     ff0:	d3c5                	beqz	a5,f90 <__sflush_r+0x3c>
     ff2:	4775                	li	a4,29
     ff4:	00e78563          	beq	a5,a4,ffe <__sflush_r+0xaa>
     ff8:	4759                	li	a4,22
     ffa:	06e79563          	bne	a5,a4,1064 <__sflush_r+0x110>
     ffe:	0124a023          	sw	s2,0(s1)
    1002:	4501                	li	a0,0
    1004:	a0b5                	j	1070 <__sflush_r+0x11c>
    1006:	4098                	lw	a4,0(s1)
    1008:	00c41783          	lh	a5,12(s0)
    100c:	cf01                	beqz	a4,1024 <__sflush_r+0xd0>
    100e:	46f5                	li	a3,29
    1010:	00d70563          	beq	a4,a3,101a <__sflush_r+0xc6>
    1014:	46d9                	li	a3,22
    1016:	04d71963          	bne	a4,a3,1068 <__sflush_r+0x114>
    101a:	481c                	lw	a5,16(s0)
    101c:	00042223          	sw	zero,4(s0)
    1020:	c01c                	sw	a5,0(s0)
    1022:	b74d                	j	fc4 <__sflush_r+0x70>
    1024:	4818                	lw	a4,16(s0)
    1026:	83b1                	srli	a5,a5,0xc
    1028:	00042223          	sw	zero,4(s0)
    102c:	c018                	sw	a4,0(s0)
    102e:	8b85                	andi	a5,a5,1
    1030:	bf41                	j	fc0 <__sflush_r+0x6c>
    1032:	0105a983          	lw	s3,16(a1)
    1036:	fc0986e3          	beqz	s3,1002 <__sflush_r+0xae>
    103a:	0005a903          	lw	s2,0(a1)
    103e:	8b8d                	andi	a5,a5,3
    1040:	0135a023          	sw	s3,0(a1)
    1044:	41390933          	sub	s2,s2,s3
    1048:	4701                	li	a4,0
    104a:	e391                	bnez	a5,104e <__sflush_r+0xfa>
    104c:	49d8                	lw	a4,20(a1)
    104e:	c418                	sw	a4,8(s0)
    1050:	fb2059e3          	blez	s2,1002 <__sflush_r+0xae>
    1054:	541c                	lw	a5,40(s0)
    1056:	500c                	lw	a1,32(s0)
    1058:	86ca                	mv	a3,s2
    105a:	864e                	mv	a2,s3
    105c:	8526                	mv	a0,s1
    105e:	9782                	jalr	a5
    1060:	00a04f63          	bgtz	a0,107e <__sflush_r+0x12a>
    1064:	00c41783          	lh	a5,12(s0)
    1068:	0407e793          	ori	a5,a5,64
    106c:	a45e                	.2byte	0xa45e
    106e:	557d                	li	a0,-1
    1070:	40f2                	lw	ra,28(sp)
    1072:	4462                	lw	s0,24(sp)
    1074:	44d2                	lw	s1,20(sp)
    1076:	4942                	lw	s2,16(sp)
    1078:	49b2                	lw	s3,12(sp)
    107a:	6105                	addi	sp,sp,32
    107c:	8082                	ret
    107e:	99aa                	add	s3,s3,a0
    1080:	40a90933          	sub	s2,s2,a0
    1084:	b7f1                	j	1050 <__sflush_r+0xfc>

00001086 <_fflush_r>:
    1086:	499c                	lw	a5,16(a1)
    1088:	1141                	addi	sp,sp,-16
    108a:	c606                	sw	ra,12(sp)
    108c:	c422                	sw	s0,8(sp)
    108e:	c226                	sw	s1,4(sp)
    1090:	eb81                	bnez	a5,10a0 <_fflush_r+0x1a>
    1092:	4481                	li	s1,0
    1094:	40b2                	lw	ra,12(sp)
    1096:	4422                	lw	s0,8(sp)
    1098:	8526                	mv	a0,s1
    109a:	4492                	lw	s1,4(sp)
    109c:	0141                	addi	sp,sp,16
    109e:	8082                	ret
    10a0:	84aa                	mv	s1,a0
    10a2:	842e                	mv	s0,a1
    10a4:	c509                	beqz	a0,10ae <_fflush_r+0x28>
    10a6:	4d1c                	lw	a5,24(a0)
    10a8:	e399                	bnez	a5,10ae <_fflush_r+0x28>
    10aa:	ddaff0ef          	jal	ra,684 <__sinit>
    10ae:	00000797          	auipc	a5,0x0
    10b2:	6e278793          	addi	a5,a5,1762 # 1790 <__sf_fake_stdin>
    10b6:	02f41e63          	bne	s0,a5,10f2 <_fflush_r+0x6c>
    10ba:	40c0                	lw	s0,4(s1)
    10bc:	00c41783          	lh	a5,12(s0)
    10c0:	dbe9                	beqz	a5,1092 <_fflush_r+0xc>
    10c2:	5078                	lw	a4,100(s0)
    10c4:	8b05                	andi	a4,a4,1
    10c6:	e719                	bnez	a4,10d4 <_fflush_r+0x4e>
    10c8:	2007f793          	andi	a5,a5,512
    10cc:	e781                	bnez	a5,10d4 <_fflush_r+0x4e>
    10ce:	4c28                	lw	a0,88(s0)
    10d0:	f2aff0ef          	jal	ra,7fa <__retarget_lock_acquire_recursive>
    10d4:	8526                	mv	a0,s1
    10d6:	85a2                	mv	a1,s0
    10d8:	3db5                	jal	f54 <__sflush_r>
    10da:	507c                	lw	a5,100(s0)
    10dc:	84aa                	mv	s1,a0
    10de:	8b85                	andi	a5,a5,1
    10e0:	fbd5                	bnez	a5,1094 <_fflush_r+0xe>
    10e2:	245e                	.2byte	0x245e
    10e4:	2007f793          	andi	a5,a5,512
    10e8:	f7d5                	bnez	a5,1094 <_fflush_r+0xe>
    10ea:	4c28                	lw	a0,88(s0)
    10ec:	f10ff0ef          	jal	ra,7fc <__retarget_lock_release_recursive>
    10f0:	b755                	j	1094 <_fflush_r+0xe>
    10f2:	00000797          	auipc	a5,0x0
    10f6:	67e78793          	addi	a5,a5,1662 # 1770 <__sf_fake_stdout>
    10fa:	00f41463          	bne	s0,a5,1102 <_fflush_r+0x7c>
    10fe:	4480                	lw	s0,8(s1)
    1100:	bf75                	j	10bc <_fflush_r+0x36>
    1102:	00000797          	auipc	a5,0x0
    1106:	64e78793          	addi	a5,a5,1614 # 1750 <__sf_fake_stderr>
    110a:	faf419e3          	bne	s0,a5,10bc <_fflush_r+0x36>
    110e:	44c0                	lw	s0,12(s1)
    1110:	b775                	j	10bc <_fflush_r+0x36>

00001112 <_lseek_r>:
    1112:	1141                	addi	sp,sp,-16
    1114:	c422                	sw	s0,8(sp)
    1116:	842a                	mv	s0,a0
    1118:	852e                	mv	a0,a1
    111a:	85b2                	mv	a1,a2
    111c:	8636                	mv	a2,a3
    111e:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    1122:	c606                	sw	ra,12(sp)
    1124:	23fd                	jal	1712 <_lseek>
    1126:	57fd                	li	a5,-1
    1128:	00f51663          	bne	a0,a5,1134 <_lseek_r+0x22>
    112c:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    1130:	c391                	beqz	a5,1134 <_lseek_r+0x22>
    1132:	c01c                	sw	a5,0(s0)
    1134:	40b2                	lw	ra,12(sp)
    1136:	4422                	lw	s0,8(sp)
    1138:	0141                	addi	sp,sp,16
    113a:	8082                	ret

0000113c <__swhatbuf_r>:
    113c:	7159                	addi	sp,sp,-112
    113e:	d4a2                	sw	s0,104(sp)
    1140:	842e                	mv	s0,a1
    1142:	00e59583          	lh	a1,14(a1)
    1146:	d2a6                	sw	s1,100(sp)
    1148:	d0ca                	sw	s2,96(sp)
    114a:	d686                	sw	ra,108(sp)
    114c:	84b2                	mv	s1,a2
    114e:	8936                	mv	s2,a3
    1150:	0205d263          	bgez	a1,1174 <__swhatbuf_r+0x38>
    1154:	245e                	.2byte	0x245e
    1156:	0807f793          	andi	a5,a5,128
    115a:	eb8d                	bnez	a5,118c <__swhatbuf_r+0x50>
    115c:	40000713          	li	a4,1024
    1160:	50b6                	lw	ra,108(sp)
    1162:	5426                	lw	s0,104(sp)
    1164:	00f92023          	sw	a5,0(s2)
    1168:	c098                	sw	a4,0(s1)
    116a:	5906                	lw	s2,96(sp)
    116c:	5496                	lw	s1,100(sp)
    116e:	4501                	li	a0,0
    1170:	6165                	addi	sp,sp,112
    1172:	8082                	ret
    1174:	0030                	addi	a2,sp,8
    1176:	232d                	jal	16a0 <_fstat_r>
    1178:	fc054ee3          	bltz	a0,1154 <__swhatbuf_r+0x18>
    117c:	4732                	lw	a4,12(sp)
    117e:	67bd                	lui	a5,0xf
    1180:	8ff9                	and	a5,a5,a4
    1182:	7779                	lui	a4,0xffffe
    1184:	97ba                	add	a5,a5,a4
    1186:	0017b793          	seqz	a5,a5
    118a:	bfc9                	j	115c <__swhatbuf_r+0x20>
    118c:	4781                	li	a5,0
    118e:	04000713          	li	a4,64
    1192:	b7f9                	j	1160 <__swhatbuf_r+0x24>

00001194 <__smakebuf_r>:
    1194:	25de                	.2byte	0x25de
    1196:	7179                	addi	sp,sp,-48
    1198:	d422                	sw	s0,40(sp)
    119a:	d606                	sw	ra,44(sp)
    119c:	d226                	sw	s1,36(sp)
    119e:	d04a                	sw	s2,32(sp)
    11a0:	ce4e                	sw	s3,28(sp)
    11a2:	8b89                	andi	a5,a5,2
    11a4:	842e                	mv	s0,a1
    11a6:	cf91                	beqz	a5,11c2 <__smakebuf_r+0x2e>
    11a8:	04740793          	addi	a5,s0,71
    11ac:	c01c                	sw	a5,0(s0)
    11ae:	c81c                	sw	a5,16(s0)
    11b0:	4785                	li	a5,1
    11b2:	c85c                	sw	a5,20(s0)
    11b4:	50b2                	lw	ra,44(sp)
    11b6:	5422                	lw	s0,40(sp)
    11b8:	5492                	lw	s1,36(sp)
    11ba:	5902                	lw	s2,32(sp)
    11bc:	49f2                	lw	s3,28(sp)
    11be:	6145                	addi	sp,sp,48
    11c0:	8082                	ret
    11c2:	0074                	addi	a3,sp,12
    11c4:	0030                	addi	a2,sp,8
    11c6:	84aa                	mv	s1,a0
    11c8:	3f95                	jal	113c <__swhatbuf_r>
    11ca:	49a2                	lw	s3,8(sp)
    11cc:	892a                	mv	s2,a0
    11ce:	8526                	mv	a0,s1
    11d0:	85ce                	mv	a1,s3
    11d2:	e80ff0ef          	jal	ra,852 <_malloc_r>
    11d6:	e919                	bnez	a0,11ec <__smakebuf_r+0x58>
    11d8:	00c41783          	lh	a5,12(s0)
    11dc:	2007f713          	andi	a4,a5,512
    11e0:	fb71                	bnez	a4,11b4 <__smakebuf_r+0x20>
    11e2:	9bf1                	andi	a5,a5,-4
    11e4:	0027e793          	ori	a5,a5,2
    11e8:	a45e                	.2byte	0xa45e
    11ea:	bf7d                	j	11a8 <__smakebuf_r+0x14>
    11ec:	fffff797          	auipc	a5,0xfffff
    11f0:	43278793          	addi	a5,a5,1074 # 61e <_cleanup_r>
    11f4:	d49c                	sw	a5,40(s1)
    11f6:	245e                	.2byte	0x245e
    11f8:	c008                	sw	a0,0(s0)
    11fa:	c808                	sw	a0,16(s0)
    11fc:	0807e793          	ori	a5,a5,128
    1200:	a45e                	.2byte	0xa45e
    1202:	47b2                	lw	a5,12(sp)
    1204:	01342a23          	sw	s3,20(s0)
    1208:	cb99                	beqz	a5,121e <__smakebuf_r+0x8a>
    120a:	00e41583          	lh	a1,14(s0)
    120e:	8526                	mv	a0,s1
    1210:	2965                	jal	16c8 <_isatty_r>
    1212:	c511                	beqz	a0,121e <__smakebuf_r+0x8a>
    1214:	245e                	.2byte	0x245e
    1216:	9bf1                	andi	a5,a5,-4
    1218:	0017e793          	ori	a5,a5,1
    121c:	a45e                	.2byte	0xa45e
    121e:	245e                	.2byte	0x245e
    1220:	0127e533          	or	a0,a5,s2
    1224:	a44a                	.2byte	0xa44a
    1226:	b779                	j	11b4 <__smakebuf_r+0x20>

00001228 <memchr>:
    1228:	0ff5f593          	zext.b	a1,a1
    122c:	962a                	add	a2,a2,a0
    122e:	00c51463          	bne	a0,a2,1236 <memchr+0xe>
    1232:	4501                	li	a0,0
    1234:	8082                	ret
    1236:	211c                	.2byte	0x211c
    1238:	feb78ee3          	beq	a5,a1,1234 <memchr+0xc>
    123c:	0505                	addi	a0,a0,1
    123e:	bfc5                	j	122e <memchr+0x6>

00001240 <__malloc_lock>:
    1240:	81c18513          	addi	a0,gp,-2020 # 2000007c <__lock___malloc_recursive_mutex>
    1244:	db6ff06f          	j	7fa <__retarget_lock_acquire_recursive>

00001248 <__malloc_unlock>:
    1248:	81c18513          	addi	a0,gp,-2020 # 2000007c <__lock___malloc_recursive_mutex>
    124c:	db0ff06f          	j	7fc <__retarget_lock_release_recursive>

00001250 <_free_r>:
    1250:	cdd1                	beqz	a1,12ec <_free_r+0x9c>
    1252:	ffc5a783          	lw	a5,-4(a1)
    1256:	1101                	addi	sp,sp,-32
    1258:	cc22                	sw	s0,24(sp)
    125a:	ce06                	sw	ra,28(sp)
    125c:	ffc58413          	addi	s0,a1,-4
    1260:	0007d363          	bgez	a5,1266 <_free_r+0x16>
    1264:	943e                	add	s0,s0,a5
    1266:	c62a                	sw	a0,12(sp)
    1268:	3fe1                	jal	1240 <__malloc_lock>
    126a:	82c18713          	addi	a4,gp,-2004 # 2000008c <__malloc_free_list>
    126e:	431c                	lw	a5,0(a4)
    1270:	4532                	lw	a0,12(sp)
    1272:	eb81                	bnez	a5,1282 <_free_r+0x32>
    1274:	00042223          	sw	zero,4(s0)
    1278:	c300                	sw	s0,0(a4)
    127a:	4462                	lw	s0,24(sp)
    127c:	40f2                	lw	ra,28(sp)
    127e:	6105                	addi	sp,sp,32
    1280:	b7e1                	j	1248 <__malloc_unlock>
    1282:	00f47d63          	bgeu	s0,a5,129c <_free_r+0x4c>
    1286:	4010                	lw	a2,0(s0)
    1288:	00c406b3          	add	a3,s0,a2
    128c:	00d79663          	bne	a5,a3,1298 <_free_r+0x48>
    1290:	4394                	lw	a3,0(a5)
    1292:	43dc                	lw	a5,4(a5)
    1294:	96b2                	add	a3,a3,a2
    1296:	c014                	sw	a3,0(s0)
    1298:	c05c                	sw	a5,4(s0)
    129a:	bff9                	j	1278 <_free_r+0x28>
    129c:	873e                	mv	a4,a5
    129e:	43dc                	lw	a5,4(a5)
    12a0:	c399                	beqz	a5,12a6 <_free_r+0x56>
    12a2:	fef47de3          	bgeu	s0,a5,129c <_free_r+0x4c>
    12a6:	4314                	lw	a3,0(a4)
    12a8:	00d70633          	add	a2,a4,a3
    12ac:	00861f63          	bne	a2,s0,12ca <_free_r+0x7a>
    12b0:	4010                	lw	a2,0(s0)
    12b2:	96b2                	add	a3,a3,a2
    12b4:	c314                	sw	a3,0(a4)
    12b6:	00d70633          	add	a2,a4,a3
    12ba:	fcc790e3          	bne	a5,a2,127a <_free_r+0x2a>
    12be:	4390                	lw	a2,0(a5)
    12c0:	43dc                	lw	a5,4(a5)
    12c2:	96b2                	add	a3,a3,a2
    12c4:	c314                	sw	a3,0(a4)
    12c6:	c35c                	sw	a5,4(a4)
    12c8:	bf4d                	j	127a <_free_r+0x2a>
    12ca:	00c47563          	bgeu	s0,a2,12d4 <_free_r+0x84>
    12ce:	47b1                	li	a5,12
    12d0:	c11c                	sw	a5,0(a0)
    12d2:	b765                	j	127a <_free_r+0x2a>
    12d4:	4010                	lw	a2,0(s0)
    12d6:	00c406b3          	add	a3,s0,a2
    12da:	00d79663          	bne	a5,a3,12e6 <_free_r+0x96>
    12de:	4394                	lw	a3,0(a5)
    12e0:	43dc                	lw	a5,4(a5)
    12e2:	96b2                	add	a3,a3,a2
    12e4:	c014                	sw	a3,0(s0)
    12e6:	c05c                	sw	a5,4(s0)
    12e8:	c340                	sw	s0,4(a4)
    12ea:	bf41                	j	127a <_free_r+0x2a>
    12ec:	8082                	ret

000012ee <_printf_common>:
    12ee:	7179                	addi	sp,sp,-48
    12f0:	ca56                	sw	s5,20(sp)
    12f2:	499c                	lw	a5,16(a1)
    12f4:	8aba                	mv	s5,a4
    12f6:	4598                	lw	a4,8(a1)
    12f8:	d422                	sw	s0,40(sp)
    12fa:	d04a                	sw	s2,32(sp)
    12fc:	ce4e                	sw	s3,28(sp)
    12fe:	cc52                	sw	s4,24(sp)
    1300:	d606                	sw	ra,44(sp)
    1302:	d226                	sw	s1,36(sp)
    1304:	c85a                	sw	s6,16(sp)
    1306:	c65e                	sw	s7,12(sp)
    1308:	89aa                	mv	s3,a0
    130a:	842e                	mv	s0,a1
    130c:	8932                	mv	s2,a2
    130e:	8a36                	mv	s4,a3
    1310:	00e7d363          	bge	a5,a4,1316 <_printf_common+0x28>
    1314:	87ba                	mv	a5,a4
    1316:	00f92023          	sw	a5,0(s2)
    131a:	04344703          	lbu	a4,67(s0)
    131e:	c701                	beqz	a4,1326 <_printf_common+0x38>
    1320:	0785                	addi	a5,a5,1
    1322:	00f92023          	sw	a5,0(s2)
    1326:	401c                	lw	a5,0(s0)
    1328:	0207f793          	andi	a5,a5,32
    132c:	c791                	beqz	a5,1338 <_printf_common+0x4a>
    132e:	00092783          	lw	a5,0(s2)
    1332:	0789                	addi	a5,a5,2
    1334:	00f92023          	sw	a5,0(s2)
    1338:	4004                	lw	s1,0(s0)
    133a:	8899                	andi	s1,s1,6
    133c:	e891                	bnez	s1,1350 <_printf_common+0x62>
    133e:	01940b13          	addi	s6,s0,25
    1342:	5bfd                	li	s7,-1
    1344:	445c                	lw	a5,12(s0)
    1346:	00092703          	lw	a4,0(s2)
    134a:	8f99                	sub	a5,a5,a4
    134c:	04f4cc63          	blt	s1,a5,13a4 <_printf_common+0xb6>
    1350:	04344783          	lbu	a5,67(s0)
    1354:	00f036b3          	snez	a3,a5
    1358:	401c                	lw	a5,0(s0)
    135a:	0207f793          	andi	a5,a5,32
    135e:	eba5                	bnez	a5,13ce <_printf_common+0xe0>
    1360:	04340613          	addi	a2,s0,67
    1364:	85d2                	mv	a1,s4
    1366:	854e                	mv	a0,s3
    1368:	9a82                	jalr	s5
    136a:	57fd                	li	a5,-1
    136c:	04f50363          	beq	a0,a5,13b2 <_printf_common+0xc4>
    1370:	401c                	lw	a5,0(s0)
    1372:	4711                	li	a4,4
    1374:	4481                	li	s1,0
    1376:	8b99                	andi	a5,a5,6
    1378:	00e79963          	bne	a5,a4,138a <_printf_common+0x9c>
    137c:	4444                	lw	s1,12(s0)
    137e:	00092783          	lw	a5,0(s2)
    1382:	8c9d                	sub	s1,s1,a5
    1384:	0004d363          	bgez	s1,138a <_printf_common+0x9c>
    1388:	4481                	li	s1,0
    138a:	441c                	lw	a5,8(s0)
    138c:	4818                	lw	a4,16(s0)
    138e:	00f75463          	bge	a4,a5,1396 <_printf_common+0xa8>
    1392:	8f99                	sub	a5,a5,a4
    1394:	94be                	add	s1,s1,a5
    1396:	4901                	li	s2,0
    1398:	0469                	addi	s0,s0,26
    139a:	5b7d                	li	s6,-1
    139c:	05249863          	bne	s1,s2,13ec <_printf_common+0xfe>
    13a0:	4501                	li	a0,0
    13a2:	a809                	j	13b4 <_printf_common+0xc6>
    13a4:	4685                	li	a3,1
    13a6:	865a                	mv	a2,s6
    13a8:	85d2                	mv	a1,s4
    13aa:	854e                	mv	a0,s3
    13ac:	9a82                	jalr	s5
    13ae:	01751e63          	bne	a0,s7,13ca <_printf_common+0xdc>
    13b2:	557d                	li	a0,-1
    13b4:	50b2                	lw	ra,44(sp)
    13b6:	5422                	lw	s0,40(sp)
    13b8:	5492                	lw	s1,36(sp)
    13ba:	5902                	lw	s2,32(sp)
    13bc:	49f2                	lw	s3,28(sp)
    13be:	4a62                	lw	s4,24(sp)
    13c0:	4ad2                	lw	s5,20(sp)
    13c2:	4b42                	lw	s6,16(sp)
    13c4:	4bb2                	lw	s7,12(sp)
    13c6:	6145                	addi	sp,sp,48
    13c8:	8082                	ret
    13ca:	0485                	addi	s1,s1,1
    13cc:	bfa5                	j	1344 <_printf_common+0x56>
    13ce:	00d40733          	add	a4,s0,a3
    13d2:	03000613          	li	a2,48
    13d6:	04c701a3          	sb	a2,67(a4) # ffffe043 <_eusrstack+0xdfff9043>
    13da:	04544703          	lbu	a4,69(s0)
    13de:	00168793          	addi	a5,a3,1
    13e2:	97a2                	add	a5,a5,s0
    13e4:	0689                	addi	a3,a3,2
    13e6:	04e781a3          	sb	a4,67(a5)
    13ea:	bf9d                	j	1360 <_printf_common+0x72>
    13ec:	4685                	li	a3,1
    13ee:	8622                	mv	a2,s0
    13f0:	85d2                	mv	a1,s4
    13f2:	854e                	mv	a0,s3
    13f4:	9a82                	jalr	s5
    13f6:	fb650ee3          	beq	a0,s6,13b2 <_printf_common+0xc4>
    13fa:	0905                	addi	s2,s2,1
    13fc:	b745                	j	139c <_printf_common+0xae>

000013fe <_printf_i>:
    13fe:	7179                	addi	sp,sp,-48
    1400:	d422                	sw	s0,40(sp)
    1402:	d04a                	sw	s2,32(sp)
    1404:	ce4e                	sw	s3,28(sp)
    1406:	cc52                	sw	s4,24(sp)
    1408:	d606                	sw	ra,44(sp)
    140a:	d226                	sw	s1,36(sp)
    140c:	ca56                	sw	s5,20(sp)
    140e:	c85a                	sw	s6,16(sp)
    1410:	0185c803          	lbu	a6,24(a1)
    1414:	07800793          	li	a5,120
    1418:	892a                	mv	s2,a0
    141a:	842e                	mv	s0,a1
    141c:	89b2                	mv	s3,a2
    141e:	8a36                	mv	s4,a3
    1420:	0307e263          	bltu	a5,a6,1444 <_printf_i+0x46>
    1424:	06200793          	li	a5,98
    1428:	04358693          	addi	a3,a1,67
    142c:	0307e163          	bltu	a5,a6,144e <_printf_i+0x50>
    1430:	1c080b63          	beqz	a6,1606 <_printf_i+0x208>
    1434:	05800793          	li	a5,88
    1438:	00000617          	auipc	a2,0x0
    143c:	38c60613          	addi	a2,a2,908 # 17c4 <__sf_fake_stdin+0x34>
    1440:	14f80763          	beq	a6,a5,158e <_printf_i+0x190>
    1444:	04240493          	addi	s1,s0,66
    1448:	05040123          	sb	a6,66(s0)
    144c:	a815                	j	1480 <_printf_i+0x82>
    144e:	f9d80793          	addi	a5,a6,-99
    1452:	0ff7f793          	zext.b	a5,a5
    1456:	4655                	li	a2,21
    1458:	fef666e3          	bltu	a2,a5,1444 <_printf_i+0x46>
    145c:	00000617          	auipc	a2,0x0
    1460:	39060613          	addi	a2,a2,912 # 17ec <__sf_fake_stdin+0x5c>
    1464:	078a                	slli	a5,a5,0x2
    1466:	97b2                	add	a5,a5,a2
    1468:	439c                	lw	a5,0(a5)
    146a:	97b2                	add	a5,a5,a2
    146c:	8782                	jr	a5
    146e:	431c                	lw	a5,0(a4)
    1470:	04258493          	addi	s1,a1,66
    1474:	00478693          	addi	a3,a5,4
    1478:	439c                	lw	a5,0(a5)
    147a:	c314                	sw	a3,0(a4)
    147c:	04f58123          	sb	a5,66(a1)
    1480:	4785                	li	a5,1
    1482:	a25d                	j	1628 <_printf_i+0x22a>
    1484:	4190                	lw	a2,0(a1)
    1486:	431c                	lw	a5,0(a4)
    1488:	08067513          	andi	a0,a2,128
    148c:	00478593          	addi	a1,a5,4
    1490:	c129                	beqz	a0,14d2 <_printf_i+0xd4>
    1492:	439c                	lw	a5,0(a5)
    1494:	c30c                	sw	a1,0(a4)
    1496:	4058                	lw	a4,4(s0)
    1498:	1207de63          	bgez	a5,15d4 <_printf_i+0x1d6>
    149c:	02d00593          	li	a1,45
    14a0:	04b401a3          	sb	a1,67(s0)
    14a4:	c418                	sw	a4,8(s0)
    14a6:	02075e63          	bgez	a4,14e2 <_printf_i+0xe4>
    14aa:	40f007b3          	neg	a5,a5
    14ae:	00000617          	auipc	a2,0x0
    14b2:	31660613          	addi	a2,a2,790 # 17c4 <__sf_fake_stdin+0x34>
    14b6:	4829                	li	a6,10
    14b8:	84b6                	mv	s1,a3
    14ba:	0307f733          	remu	a4,a5,a6
    14be:	14fd                	addi	s1,s1,-1
    14c0:	9732                	add	a4,a4,a2
    14c2:	2318                	.2byte	0x2318
    14c4:	a098                	.2byte	0xa098
    14c6:	873e                	mv	a4,a5
    14c8:	0307d7b3          	divu	a5,a5,a6
    14cc:	ff0777e3          	bgeu	a4,a6,14ba <_printf_i+0xbc>
    14d0:	a085                	j	1530 <_printf_i+0x132>
    14d2:	439c                	lw	a5,0(a5)
    14d4:	04067513          	andi	a0,a2,64
    14d8:	c30c                	sw	a1,0(a4)
    14da:	dd55                	beqz	a0,1496 <_printf_i+0x98>
    14dc:	07c2                	slli	a5,a5,0x10
    14de:	87c1                	srai	a5,a5,0x10
    14e0:	bf5d                	j	1496 <_printf_i+0x98>
    14e2:	9a6d                	andi	a2,a2,-5
    14e4:	c010                	sw	a2,0(s0)
    14e6:	b7d1                	j	14aa <_printf_i+0xac>
    14e8:	4190                	lw	a2,0(a1)
    14ea:	431c                	lw	a5,0(a4)
    14ec:	08067513          	andi	a0,a2,128
    14f0:	00478593          	addi	a1,a5,4
    14f4:	c501                	beqz	a0,14fc <_printf_i+0xfe>
    14f6:	c30c                	sw	a1,0(a4)
    14f8:	439c                	lw	a5,0(a5)
    14fa:	a031                	j	1506 <_printf_i+0x108>
    14fc:	04067613          	andi	a2,a2,64
    1500:	c30c                	sw	a1,0(a4)
    1502:	da7d                	beqz	a2,14f8 <_printf_i+0xfa>
    1504:	239e                	.2byte	0x239e
    1506:	06f00713          	li	a4,111
    150a:	00000617          	auipc	a2,0x0
    150e:	2ba60613          	addi	a2,a2,698 # 17c4 <__sf_fake_stdin+0x34>
    1512:	0ae81f63          	bne	a6,a4,15d0 <_printf_i+0x1d2>
    1516:	4821                	li	a6,8
    1518:	040401a3          	sb	zero,67(s0)
    151c:	4058                	lw	a4,4(s0)
    151e:	c418                	sw	a4,8(s0)
    1520:	f8074ce3          	bltz	a4,14b8 <_printf_i+0xba>
    1524:	400c                	lw	a1,0(s0)
    1526:	99ed                	andi	a1,a1,-5
    1528:	c00c                	sw	a1,0(s0)
    152a:	f7d9                	bnez	a5,14b8 <_printf_i+0xba>
    152c:	84b6                	mv	s1,a3
    152e:	f749                	bnez	a4,14b8 <_printf_i+0xba>
    1530:	47a1                	li	a5,8
    1532:	00f81e63          	bne	a6,a5,154e <_printf_i+0x150>
    1536:	401c                	lw	a5,0(s0)
    1538:	8b85                	andi	a5,a5,1
    153a:	cb91                	beqz	a5,154e <_printf_i+0x150>
    153c:	4058                	lw	a4,4(s0)
    153e:	481c                	lw	a5,16(s0)
    1540:	00e7c763          	blt	a5,a4,154e <_printf_i+0x150>
    1544:	03000793          	li	a5,48
    1548:	fef48fa3          	sb	a5,-1(s1)
    154c:	14fd                	addi	s1,s1,-1
    154e:	8e85                	sub	a3,a3,s1
    1550:	c814                	sw	a3,16(s0)
    1552:	8752                	mv	a4,s4
    1554:	86ce                	mv	a3,s3
    1556:	0070                	addi	a2,sp,12
    1558:	85a2                	mv	a1,s0
    155a:	854a                	mv	a0,s2
    155c:	3b49                	jal	12ee <_printf_common>
    155e:	5afd                	li	s5,-1
    1560:	0d551863          	bne	a0,s5,1630 <_printf_i+0x232>
    1564:	557d                	li	a0,-1
    1566:	50b2                	lw	ra,44(sp)
    1568:	5422                	lw	s0,40(sp)
    156a:	5492                	lw	s1,36(sp)
    156c:	5902                	lw	s2,32(sp)
    156e:	49f2                	lw	s3,28(sp)
    1570:	4a62                	lw	s4,24(sp)
    1572:	4ad2                	lw	s5,20(sp)
    1574:	4b42                	lw	s6,16(sp)
    1576:	6145                	addi	sp,sp,48
    1578:	8082                	ret
    157a:	419c                	lw	a5,0(a1)
    157c:	0207e793          	ori	a5,a5,32
    1580:	c19c                	sw	a5,0(a1)
    1582:	07800813          	li	a6,120
    1586:	00000617          	auipc	a2,0x0
    158a:	25260613          	addi	a2,a2,594 # 17d8 <__sf_fake_stdin+0x48>
    158e:	050402a3          	sb	a6,69(s0)
    1592:	400c                	lw	a1,0(s0)
    1594:	431c                	lw	a5,0(a4)
    1596:	0805f813          	andi	a6,a1,128
    159a:	00478513          	addi	a0,a5,4
    159e:	00080563          	beqz	a6,15a8 <_printf_i+0x1aa>
    15a2:	c308                	sw	a0,0(a4)
    15a4:	439c                	lw	a5,0(a5)
    15a6:	a039                	j	15b4 <_printf_i+0x1b6>
    15a8:	0405f813          	andi	a6,a1,64
    15ac:	c308                	sw	a0,0(a4)
    15ae:	fe080be3          	beqz	a6,15a4 <_printf_i+0x1a6>
    15b2:	239e                	.2byte	0x239e
    15b4:	0015f713          	andi	a4,a1,1
    15b8:	c701                	beqz	a4,15c0 <_printf_i+0x1c2>
    15ba:	0205e593          	ori	a1,a1,32
    15be:	c00c                	sw	a1,0(s0)
    15c0:	c399                	beqz	a5,15c6 <_printf_i+0x1c8>
    15c2:	4841                	li	a6,16
    15c4:	bf91                	j	1518 <_printf_i+0x11a>
    15c6:	4018                	lw	a4,0(s0)
    15c8:	fdf77713          	andi	a4,a4,-33
    15cc:	c018                	sw	a4,0(s0)
    15ce:	bfd5                	j	15c2 <_printf_i+0x1c4>
    15d0:	4829                	li	a6,10
    15d2:	b799                	j	1518 <_printf_i+0x11a>
    15d4:	00000617          	auipc	a2,0x0
    15d8:	1f060613          	addi	a2,a2,496 # 17c4 <__sf_fake_stdin+0x34>
    15dc:	4829                	li	a6,10
    15de:	bf3d                	j	151c <_printf_i+0x11e>
    15e0:	4190                	lw	a2,0(a1)
    15e2:	431c                	lw	a5,0(a4)
    15e4:	49cc                	lw	a1,20(a1)
    15e6:	08067813          	andi	a6,a2,128
    15ea:	00478513          	addi	a0,a5,4
    15ee:	00080663          	beqz	a6,15fa <_printf_i+0x1fc>
    15f2:	c308                	sw	a0,0(a4)
    15f4:	439c                	lw	a5,0(a5)
    15f6:	c38c                	sw	a1,0(a5)
    15f8:	a039                	j	1606 <_printf_i+0x208>
    15fa:	c308                	sw	a0,0(a4)
    15fc:	04067613          	andi	a2,a2,64
    1600:	439c                	lw	a5,0(a5)
    1602:	da75                	beqz	a2,15f6 <_printf_i+0x1f8>
    1604:	a38e                	.2byte	0xa38e
    1606:	00042823          	sw	zero,16(s0)
    160a:	84b6                	mv	s1,a3
    160c:	b799                	j	1552 <_printf_i+0x154>
    160e:	431c                	lw	a5,0(a4)
    1610:	41d0                	lw	a2,4(a1)
    1612:	4581                	li	a1,0
    1614:	00478693          	addi	a3,a5,4
    1618:	c314                	sw	a3,0(a4)
    161a:	4384                	lw	s1,0(a5)
    161c:	8526                	mv	a0,s1
    161e:	3129                	jal	1228 <memchr>
    1620:	c119                	beqz	a0,1626 <_printf_i+0x228>
    1622:	8d05                	sub	a0,a0,s1
    1624:	c048                	sw	a0,4(s0)
    1626:	405c                	lw	a5,4(s0)
    1628:	c81c                	sw	a5,16(s0)
    162a:	040401a3          	sb	zero,67(s0)
    162e:	b715                	j	1552 <_printf_i+0x154>
    1630:	4814                	lw	a3,16(s0)
    1632:	8626                	mv	a2,s1
    1634:	85ce                	mv	a1,s3
    1636:	854a                	mv	a0,s2
    1638:	9a02                	jalr	s4
    163a:	f35505e3          	beq	a0,s5,1564 <_printf_i+0x166>
    163e:	401c                	lw	a5,0(s0)
    1640:	8b89                	andi	a5,a5,2
    1642:	e78d                	bnez	a5,166c <_printf_i+0x26e>
    1644:	47b2                	lw	a5,12(sp)
    1646:	4448                	lw	a0,12(s0)
    1648:	f0f55fe3          	bge	a0,a5,1566 <_printf_i+0x168>
    164c:	853e                	mv	a0,a5
    164e:	bf21                	j	1566 <_printf_i+0x168>
    1650:	4685                	li	a3,1
    1652:	8656                	mv	a2,s5
    1654:	85ce                	mv	a1,s3
    1656:	854a                	mv	a0,s2
    1658:	9a02                	jalr	s4
    165a:	f16505e3          	beq	a0,s6,1564 <_printf_i+0x166>
    165e:	0485                	addi	s1,s1,1
    1660:	445c                	lw	a5,12(s0)
    1662:	4732                	lw	a4,12(sp)
    1664:	8f99                	sub	a5,a5,a4
    1666:	fef4c5e3          	blt	s1,a5,1650 <_printf_i+0x252>
    166a:	bfe9                	j	1644 <_printf_i+0x246>
    166c:	4481                	li	s1,0
    166e:	01940a93          	addi	s5,s0,25
    1672:	5b7d                	li	s6,-1
    1674:	b7f5                	j	1660 <_printf_i+0x262>

00001676 <_read_r>:
    1676:	1141                	addi	sp,sp,-16
    1678:	c422                	sw	s0,8(sp)
    167a:	842a                	mv	s0,a0
    167c:	852e                	mv	a0,a1
    167e:	85b2                	mv	a1,a2
    1680:	8636                	mv	a2,a3
    1682:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    1686:	c606                	sw	ra,12(sp)
    1688:	2859                	jal	171e <_read>
    168a:	57fd                	li	a5,-1
    168c:	00f51663          	bne	a0,a5,1698 <_read_r+0x22>
    1690:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    1694:	c391                	beqz	a5,1698 <_read_r+0x22>
    1696:	c01c                	sw	a5,0(s0)
    1698:	40b2                	lw	ra,12(sp)
    169a:	4422                	lw	s0,8(sp)
    169c:	0141                	addi	sp,sp,16
    169e:	8082                	ret

000016a0 <_fstat_r>:
    16a0:	1141                	addi	sp,sp,-16
    16a2:	c422                	sw	s0,8(sp)
    16a4:	842a                	mv	s0,a0
    16a6:	852e                	mv	a0,a1
    16a8:	85b2                	mv	a1,a2
    16aa:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    16ae:	c606                	sw	ra,12(sp)
    16b0:	20a9                	jal	16fa <_fstat>
    16b2:	57fd                	li	a5,-1
    16b4:	00f51663          	bne	a0,a5,16c0 <_fstat_r+0x20>
    16b8:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    16bc:	c391                	beqz	a5,16c0 <_fstat_r+0x20>
    16be:	c01c                	sw	a5,0(s0)
    16c0:	40b2                	lw	ra,12(sp)
    16c2:	4422                	lw	s0,8(sp)
    16c4:	0141                	addi	sp,sp,16
    16c6:	8082                	ret

000016c8 <_isatty_r>:
    16c8:	1141                	addi	sp,sp,-16
    16ca:	c422                	sw	s0,8(sp)
    16cc:	842a                	mv	s0,a0
    16ce:	852e                	mv	a0,a1
    16d0:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    16d4:	c606                	sw	ra,12(sp)
    16d6:	2805                	jal	1706 <_isatty>
    16d8:	57fd                	li	a5,-1
    16da:	00f51663          	bne	a0,a5,16e6 <_isatty_r+0x1e>
    16de:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    16e2:	c391                	beqz	a5,16e6 <_isatty_r+0x1e>
    16e4:	c01c                	sw	a5,0(s0)
    16e6:	40b2                	lw	ra,12(sp)
    16e8:	4422                	lw	s0,8(sp)
    16ea:	0141                	addi	sp,sp,16
    16ec:	8082                	ret

000016ee <_close>:
    16ee:	05800793          	li	a5,88
    16f2:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    16f6:	557d                	li	a0,-1
    16f8:	8082                	ret

000016fa <_fstat>:
    16fa:	05800793          	li	a5,88
    16fe:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    1702:	557d                	li	a0,-1
    1704:	8082                	ret

00001706 <_isatty>:
    1706:	05800793          	li	a5,88
    170a:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    170e:	4501                	li	a0,0
    1710:	8082                	ret

00001712 <_lseek>:
    1712:	05800793          	li	a5,88
    1716:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    171a:	557d                	li	a0,-1
    171c:	8082                	ret

0000171e <_read>:
    171e:	05800793          	li	a5,88
    1722:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    1726:	557d                	li	a0,-1
    1728:	8082                	ret
    172a:	0000                	unimp
    172c:	74737953          	.4byte	0x74737953
    1730:	6d65                	lui	s10,0x19
    1732:	3a6b6c43          	.4byte	0x3a6b6c43
    1736:	6425                	lui	s0,0x9
    1738:	0a0d                	addi	s4,s4,3
    173a:	0000                	unimp
    173c:	442d                	li	s0,11
    173e:	4245                	li	tp,17
    1740:	4755                	li	a4,21
    1742:	502d                	c.li	zero,-21
    1744:	2d52                	.2byte	0x2d52
    1746:	3025                	jal	f6e <__sflush_r+0x1a>
    1748:	7838                	.2byte	0x7838
    174a:	0a0d                	addi	s4,s4,3
    174c:	0000                	unimp
	...

00001750 <__sf_fake_stderr>:
	...

00001770 <__sf_fake_stdout>:
	...

00001790 <__sf_fake_stdin>:
	...
    17b0:	2d23 2b30 0020 0000 6c68 004c 6665 4567     #-0+ ...hlL.efgE
    17c0:	4746 0000 3130 3332 3534 3736 3938 4241     FG..0123456789AB
    17d0:	4443 4645 0000 0000 3130 3332 3534 3736     CDEF....01234567
    17e0:	3938 6261 6463 6665 0000 0000 fc82 ffff     89abcdef........
    17f0:	fc98 ffff fc58 ffff fc58 ffff fc58 ffff     ....X...X...X...
    1800:	fc58 ffff fc98 ffff fc58 ffff fc58 ffff     X.......X...X...
    1810:	fc58 ffff fc58 ffff fdf4 ffff fcfc ffff     X...X...........
    1820:	fd8e ffff fc58 ffff fc58 ffff fe22 ffff     ....X...X..."...
    1830:	fc58 ffff fcfc ffff fc58 ffff fc58 ffff     X.......X...X...
    1840:	fd96 ffff                                   ....

build/Blinker.elf:     file format elf32-littleriscv
build/Blinker.elf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x00000000

Program Header:
0x70000003 off    0x000030a7 vaddr 0x00000000 paddr 0x00000000 align 2**0
         filesz 0x0000003a memsz 0x00000000 flags r--
    LOAD off    0x00001000 vaddr 0x00000000 paddr 0x00000000 align 2**12
         filesz 0x00001844 memsz 0x00001844 flags r-x
    LOAD off    0x00003000 vaddr 0x20000000 paddr 0x00001844 align 2**12
         filesz 0x00000074 memsz 0x00000094 flags rw-
    LOAD off    0x00000800 vaddr 0x20004800 paddr 0x20004800 align 2**12
         filesz 0x00000000 memsz 0x00000800 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .init         00000004  00000000  00000000  00001000  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .vector       000000fc  00000004  00000004  00001004  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .text         00001744  00000100  00000100  00001100  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .fini         00000000  00001844  00001844  00003074  2**0
                  CONTENTS, ALLOC, LOAD, CODE
  4 .dalign       00000000  20000000  20000000  00003074  2**0
                  CONTENTS
  5 .dlalign      00000000  00001844  00001844  00003074  2**0
                  CONTENTS
  6 .data         00000074  20000000  00001844  00003000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .bss          00000020  20000074  000018b8  00003074  2**2
                  ALLOC
  8 .stack        00000800  20004800  20004800  00003800  2**0
                  ALLOC
  9 .comment      00000033  00000000  00000000  00003074  2**0
                  CONTENTS, READONLY
 10 .riscv.attributes 0000003a  00000000  00000000  000030a7  2**0
                  CONTENTS, READONLY
SYMBOL TABLE:
00000000 l    d  .init	00000000 .init
00000004 l    d  .vector	00000000 .vector
00000100 l    d  .text	00000000 .text
00001844 l    d  .fini	00000000 .fini
20000000 l    d  .dalign	00000000 .dalign
00001844 l    d  .dlalign	00000000 .dlalign
20000000 l    d  .data	00000000 .data
20000074 l    d  .bss	00000000 .bss
20004800 l    d  .stack	00000000 .stack
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .riscv.attributes	00000000 .riscv.attributes
00000000 l    df *ABS*	00000000 startup_ch32v20x_D6.o
00000004 l       .vector	00000000 _vector_base
00000000 l    df *ABS*	00000000 lib_a-memset.o
00000000 l    df *ABS*	00000000 save-restore.o
00000000 l    df *ABS*	00000000 debug.c
20000076 l     O .bss	00000001 p_us
20000074 l     O .bss	00000002 p_ms
20000060 l     O .data	00000004 curbrk.0
00000000 l    df *ABS*	00000000 ch32v20x_gpio.c
00000000 l    df *ABS*	00000000 ch32v20x_misc.c
00000000 l    df *ABS*	00000000 ch32v20x_rcc.c
00000000 l    df *ABS*	00000000 ch32v20x_it.c
00000000 l    df *ABS*	00000000 main.c
00000000 l    df *ABS*	00000000 system_ch32v20x.c
00000000 l    df *ABS*	00000000 lib_a-printf.o
00000000 l    df *ABS*	00000000 lib_a-findfp.o
000005ba l     F .text	00000064 std
00000000 l    df *ABS*	00000000 lib_a-fwalk.o
00000000 l    df *ABS*	00000000 lib_a-lock.o
00000000 l    df *ABS*	00000000 lib_a-nano-mallocr.o
000007fe l     F .text	00000054 sbrk_aligned
00000000 l    df *ABS*	00000000 lib_a-nano-vfprintf.o
00000960 l     F .text	00000026 __sfputc_r
00000000 l    df *ABS*	00000000 lib_a-sbrkr.o
00000000 l    df *ABS*	00000000 lib_a-stdio.o
00000000 l    df *ABS*	00000000 lib_a-wbuf.o
00000000 l    df *ABS*	00000000 lib_a-writer.o
00000000 l    df *ABS*	00000000 lib_a-wsetup.o
00000000 l    df *ABS*	00000000 lib_a-closer.o
00000000 l    df *ABS*	00000000 lib_a-fflush.o
00000000 l    df *ABS*	00000000 lib_a-lseekr.o
00000000 l    df *ABS*	00000000 lib_a-makebuf.o
00000000 l    df *ABS*	00000000 lib_a-memchr.o
00000000 l    df *ABS*	00000000 lib_a-mlock.o
00000000 l    df *ABS*	00000000 lib_a-nano-freer.o
00000000 l    df *ABS*	00000000 lib_a-nano-vfprintf_i.o
00000000 l    df *ABS*	00000000 lib_a-readr.o
00000000 l    df *ABS*	00000000 lib_a-fstatr.o
00000000 l    df *ABS*	00000000 lib_a-isattyr.o
00000000 l    df *ABS*	00000000 close.o
00000000 l    df *ABS*	00000000 fstat.o
00000000 l    df *ABS*	00000000 isatty.o
00000000 l    df *ABS*	00000000 lseek.o
00000000 l    df *ABS*	00000000 read.o
00000000 l    df *ABS*	00000000 lib_a-impure.o
20000000 l     O .data	00000060 impure_data
000004fa  w      .text	00000000 EXTI2_IRQHandler
000016c8 g     F .text	00000026 _isatty_r
00001112 g     F .text	0000002a _lseek_r
00000582 g     F .text	00000038 printf
20000860 g       .data	00000000 __global_pointer$
00000118 g     F .text	00000028 .hidden __riscv_save_8
000004fa  w      .text	00000000 TIM1_CC_IRQHandler
00000d1c g     F .text	00000030 __sseek
00000684 g     F .text	00000068 __sinit
00000d52 g     F .text	000000be __swbuf_r
00000392 g     F .text	00000010 HardFault_Handler
00000628 g     F .text	00000044 __sfmoreglue
00001248 g     F .text	00000008 __malloc_unlock
00000164 g     F .text	0000000c .hidden __riscv_restore_3
000004fa  w      .text	00000000 SysTick_Handler
000004fa  w      .text	00000000 PVD_IRQHandler
00000150 g     F .text	00000020 .hidden __riscv_restore_10
00000390 g     F .text	00000002 NMI_Handler
000004fa  w      .text	00000000 EXTI3_IRQHandler
00000118 g     F .text	00000028 .hidden __riscv_save_11
000016a0 g     F .text	00000028 _fstat_r
20000090 g     O .bss	00000004 errno
20000074 g       .bss	00000000 _sbss
00000800 g       *ABS*	00000000 __stack_size
000004fa  w      .text	00000000 USBFS_IRQHandler
00000164 g     F .text	0000000c .hidden __riscv_restore_2
0000061e g     F .text	0000000a _cleanup_r
000004fa  w      .text	00000000 EXTI0_IRQHandler
000004fa  w      .text	00000000 I2C2_EV_IRQHandler
20000064 g     O .data	00000004 SystemCoreClock
000016fa g     F .text	0000000c _fstat
00000004 g       .init	00000000 _einit
00000372 g     F .text	0000001e RCC_APB2PeriphClockCmd
00000110 g     F .text	00000030 .hidden __riscv_save_12
000004fa  w      .text	00000000 ADC1_2_IRQHandler
0000027e g     F .text	000000ee GPIO_Init
000004fa  w      .text	00000000 Break_Point_Handler
00000150 g     F .text	00000020 .hidden __riscv_restore_11
20000078 g     O .bss	00000004 NVIC_Priority_Group
000004fa  w      .text	00000000 SPI1_IRQHandler
00000c7e g     F .text	00000028 _sbrk_r
000004fa  w      .text	00000000 TAMPER_IRQHandler
00000140 g     F .text	0000000c .hidden __riscv_save_1
00000164 g     F .text	0000000c .hidden __riscv_restore_0
00001676 g     F .text	0000002a _read_r
00000126 g     F .text	0000001a .hidden __riscv_save_7
000004fa  w      .text	00000000 Ecall_M_Mode_Handler
20004800 g       .stack	00000000 _heap_end
00001706 g     F .text	0000000c _isatty
20000084 g     O .bss	00000001 __lock___sinit_recursive_mutex
20000070 g     O .data	00000004 _global_impure_ptr
0000015a g     F .text	00000016 .hidden __riscv_restore_5
000004fa  w      .text	00000000 DMA1_Channel4_IRQHandler
00000254 g     F .text	0000002a _sbrk
0000015a g     F .text	00000016 .hidden __riscv_restore_6
000004fa  w      .text	00000000 USART3_IRQHandler
000004fa  w      .text	00000000 RTC_IRQHandler
20000094 g       .bss	00000000 _ebss
000004fa  w      .text	00000000 DMA1_Channel7_IRQHandler
000004fa  w      .text	00000000 CAN1_RX1_IRQHandler
00000170 g     F .text	0000002a Delay_Init
2000007c g     O .bss	00000001 __lock___malloc_recursive_mutex
000004fa  w      .text	00000000 TIM4_IRQHandler
00000118 g     F .text	00000028 .hidden __riscv_save_9
00001750 g     O .text	00000020 __sf_fake_stderr
00000126 g     F .text	0000001a .hidden __riscv_save_4
000004fa  w      .text	00000000 I2C1_EV_IRQHandler
000003a2 g     F .text	0000002e GPIO_Toggle_INIT
000007fc g     F .text	00000002 __retarget_lock_release_recursive
000004fa  w      .text	00000000 DMA1_Channel6_IRQHandler
00000986 g     F .text	00000040 __sfputs_r
000004fa  w      .text	00000000 UART4_IRQHandler
0000066c g     F .text	00000006 __sfp_lock_acquire
00001228 g     F .text	00000018 memchr
00001250 g     F .text	0000009e _free_r
000004fa  w      .text	00000000 TIM3_IRQHandler
000004fa  w      .text	00000000 RCC_IRQHandler
00000140 g     F .text	0000000c .hidden __riscv_save_3
000004fa  w      .text	00000000 TIM1_TRG_COM_IRQHandler
000004fa  w      .text	00000000 DMA1_Channel1_IRQHandler
00000000 g       .init	00000000 _start
00001712 g     F .text	0000000c _lseek
000004fa  w      .text	00000000 EXTI15_10_IRQHandler
000004fa  w      .text	00000000 DMA1_Channel8_IRQHandler
00000f2c g     F .text	00000028 _close_r
20000000 g       .dalign	00000000 _data_vma
20000077 g     O .bss	00000001 MCU_Version
00000e3c g     F .text	000000f0 __swsetup_r
000004fa  w      .text	00000000 EXTI9_5_IRQHandler
000006ec g     F .text	000000a4 __sfp
0000067e g     F .text	00000006 __sinit_lock_release
00000118 g     F .text	00000028 .hidden __riscv_save_10
00000ca6 g     F .text	0000002e __sread
00001240 g     F .text	00000008 __malloc_lock
0000015a g     F .text	00000016 .hidden __riscv_restore_4
00000150 g     F .text	00000020 .hidden __riscv_restore_8
00001086 g     F .text	0000008c _fflush_r
00000126 g     F .text	0000001a .hidden __riscv_save_6
000004fa  w      .text	00000000 SPI2_IRQHandler
00001790 g     O .text	00000020 __sf_fake_stdin
000007fa g     F .text	00000002 __retarget_lock_acquire_recursive
00000100 g     F .text	00000010 memset
00000150 g     F .text	00000020 .hidden __riscv_restore_9
0000015a g     F .text	00000016 .hidden __riscv_restore_7
000003d0 g     F .text	00000040 main
000007f8 g     F .text	00000002 __retarget_lock_init_recursive
00000d4c g     F .text	00000006 __sclose
00000852 g     F .text	0000010e _malloc_r
000004fa  w      .text	00000000 DMA1_Channel5_IRQHandler
000004fa  w      .text	00000000 EXTI4_IRQHandler
0000019a g     F .text	00000036 Delay_Ms
000004fa  w      .text	00000000 USB_LP_CAN1_RX0_IRQHandler
00000410 g     F .text	000000ea SystemInit
00000582 g     F .text	00000038 iprintf
000004fa  w      .text	00000000 USB_HP_CAN1_TX_IRQHandler
00000000 g       .init	00000000 _sinit
00000e10 g     F .text	0000002c _write_r
000001d0 g     F .text	00000014 SDI_Printf_Enable
000004fa  w      .text	00000000 DMA1_Channel3_IRQHandler
000012ee g     F .text	00000110 _printf_common
20000068 g     O .data	00000004 _impure_ptr
000004fa  w      .text	00000000 TIM1_UP_IRQHandler
00000f54 g     F .text	00000132 __sflush_r
000004fa  w      .text	00000000 WWDG_IRQHandler
000004fa  w      .text	00000000 Ecall_U_Mode_Handler
000004fa  w      .text	00000000 TIM2_IRQHandler
20005000 g       .stack	00000000 _eusrstack
00000140 g     F .text	0000000c .hidden __riscv_save_2
000004fa  w      .text	00000000 SW_Handler
000004fa  w      .text	00000000 TIM1_BRK_IRQHandler
0000113c g     F .text	00000058 __swhatbuf_r
000004fa  w      .text	00000000 EXTI1_IRQHandler
00000126 g     F .text	0000001a .hidden __riscv_save_5
000001e4 g     F .text	00000070 _write
20000074 g       .data	00000000 _edata
20000094 g       .bss	00000000 _end
000004fa  w      .text	00000000 RTCAlarm_IRQHandler
00001844 g       .dlalign	00000000 _data_lma
000004fa  w      .text	00000000 USART2_IRQHandler
00000cd4 g     F .text	00000048 __swrite
000009c6 g     F .text	000002b8 _vfiprintf_r
00000790 g     F .text	00000068 _fwalk_reent
000004fa  w      .text	00000000 I2C2_ER_IRQHandler
000004fa  w      .text	00000000 DMA1_Channel2_IRQHandler
00000672 g     F .text	00000006 __sfp_lock_release
00001770 g     O .text	00000020 __sf_fake_stdout
0000014c g     F .text	00000024 .hidden __riscv_restore_12
0000171e g     F .text	0000000c _read
000004fc  w      .text	00000000 handle_reset
000004fa  w      .text	00000000 CAN1_SCE_IRQHandler
000004fa  w      .text	00000000 FLASH_IRQHandler
00000140 g     F .text	0000000c .hidden __riscv_save_0
000004fa  w      .text	00000000 USBFSWakeUp_IRQHandler
000004fa  w      .text	00000000 USART1_IRQHandler
00001194 g     F .text	00000094 __smakebuf_r
000013fe g     F .text	00000278 _printf_i
20000088 g     O .bss	00000004 __malloc_sbrk_start
000004fa  w      .text	00000000 I2C1_ER_IRQHandler
0000036c g     F .text	00000006 NVIC_PriorityGroupConfig
2000008c g     O .bss	00000004 __malloc_free_list
00000164 g     F .text	0000000c .hidden __riscv_restore_1
000009c6 g     F .text	000002b8 _vfprintf_r
000004fa  w      .text	00000000 USBWakeUp_IRQHandler
20000080 g     O .bss	00000001 __lock___sfp_recursive_mutex
000016ee g     F .text	0000000c _close
00000678 g     F .text	00000006 __sinit_lock_acquire



Disassembly of section .init:

00000000 <_sinit>:
   0:	4fc0006f          	j	4fc <handle_reset>

Disassembly of section .vector:

00000004 <_vector_base>:
	...
   c:	00000390          	.word	0x00000390
  10:	00000392          	.word	0x00000392
  14:	00000000          	.word	0x00000000
  18:	000004fa          	.word	0x000004fa
	...
  24:	000004fa          	.word	0x000004fa
  28:	000004fa          	.word	0x000004fa
	...
  34:	000004fa          	.word	0x000004fa
  38:	00000000          	.word	0x00000000
  3c:	000004fa          	.word	0x000004fa
  40:	00000000          	.word	0x00000000
  44:	000004fa          	.word	0x000004fa
  48:	000004fa          	.word	0x000004fa
  4c:	000004fa          	.word	0x000004fa
  50:	000004fa          	.word	0x000004fa
  54:	000004fa          	.word	0x000004fa
  58:	000004fa          	.word	0x000004fa
  5c:	000004fa          	.word	0x000004fa
  60:	000004fa          	.word	0x000004fa
  64:	000004fa          	.word	0x000004fa
  68:	000004fa          	.word	0x000004fa
  6c:	000004fa          	.word	0x000004fa
  70:	000004fa          	.word	0x000004fa
  74:	000004fa          	.word	0x000004fa
  78:	000004fa          	.word	0x000004fa
  7c:	000004fa          	.word	0x000004fa
  80:	000004fa          	.word	0x000004fa
  84:	000004fa          	.word	0x000004fa
  88:	000004fa          	.word	0x000004fa
  8c:	000004fa          	.word	0x000004fa
  90:	000004fa          	.word	0x000004fa
  94:	000004fa          	.word	0x000004fa
  98:	000004fa          	.word	0x000004fa
  9c:	000004fa          	.word	0x000004fa
  a0:	000004fa          	.word	0x000004fa
  a4:	000004fa          	.word	0x000004fa
  a8:	000004fa          	.word	0x000004fa
  ac:	000004fa          	.word	0x000004fa
  b0:	000004fa          	.word	0x000004fa
  b4:	000004fa          	.word	0x000004fa
  b8:	000004fa          	.word	0x000004fa
  bc:	000004fa          	.word	0x000004fa
  c0:	000004fa          	.word	0x000004fa
  c4:	000004fa          	.word	0x000004fa
  c8:	000004fa          	.word	0x000004fa
  cc:	000004fa          	.word	0x000004fa
  d0:	000004fa          	.word	0x000004fa
  d4:	000004fa          	.word	0x000004fa
  d8:	000004fa          	.word	0x000004fa
  dc:	000004fa          	.word	0x000004fa
  e0:	000004fa          	.word	0x000004fa
  e4:	000004fa          	.word	0x000004fa
  e8:	000004fa          	.word	0x000004fa
  ec:	000004fa          	.word	0x000004fa
  f0:	000004fa          	.word	0x000004fa
  f4:	000004fa          	.word	0x000004fa
  f8:	000004fa          	.word	0x000004fa
  fc:	000004fa          	.word	0x000004fa

Disassembly of section .text:

00000100 <memset>:
     100:	832a                	mv	t1,a0
     102:	c611                	beqz	a2,10e <memset+0xe>
     104:	00b30023          	sb	a1,0(t1)
     108:	167d                	addi	a2,a2,-1
     10a:	0305                	addi	t1,t1,1
     10c:	fe65                	bnez	a2,104 <memset+0x4>
     10e:	8082                	ret

00000110 <__riscv_save_12>:
     110:	7139                	addi	sp,sp,-64
     112:	4301                	li	t1,0
     114:	c66e                	sw	s11,12(sp)
     116:	a019                	j	11c <__riscv_save_10+0x4>

00000118 <__riscv_save_10>:
     118:	7139                	addi	sp,sp,-64
     11a:	5341                	li	t1,-16
     11c:	c86a                	sw	s10,16(sp)
     11e:	ca66                	sw	s9,20(sp)
     120:	cc62                	sw	s8,24(sp)
     122:	ce5e                	sw	s7,28(sp)
     124:	a019                	j	12a <__riscv_save_4+0x4>

00000126 <__riscv_save_4>:
     126:	7139                	addi	sp,sp,-64
     128:	5301                	li	t1,-32
     12a:	d05a                	sw	s6,32(sp)
     12c:	d256                	sw	s5,36(sp)
     12e:	d452                	sw	s4,40(sp)
     130:	d64e                	sw	s3,44(sp)
     132:	d84a                	sw	s2,48(sp)
     134:	da26                	sw	s1,52(sp)
     136:	dc22                	sw	s0,56(sp)
     138:	de06                	sw	ra,60(sp)
     13a:	40610133          	sub	sp,sp,t1
     13e:	8282                	jr	t0

00000140 <__riscv_save_0>:
     140:	1141                	addi	sp,sp,-16
     142:	c04a                	sw	s2,0(sp)
     144:	c226                	sw	s1,4(sp)
     146:	c422                	sw	s0,8(sp)
     148:	c606                	sw	ra,12(sp)
     14a:	8282                	jr	t0

0000014c <__riscv_restore_12>:
     14c:	4db2                	lw	s11,12(sp)
     14e:	0141                	addi	sp,sp,16

00000150 <__riscv_restore_10>:
     150:	4d02                	lw	s10,0(sp)
     152:	4c92                	lw	s9,4(sp)
     154:	4c22                	lw	s8,8(sp)
     156:	4bb2                	lw	s7,12(sp)
     158:	0141                	addi	sp,sp,16

0000015a <__riscv_restore_4>:
     15a:	4b02                	lw	s6,0(sp)
     15c:	4a92                	lw	s5,4(sp)
     15e:	4a22                	lw	s4,8(sp)
     160:	49b2                	lw	s3,12(sp)
     162:	0141                	addi	sp,sp,16

00000164 <__riscv_restore_0>:
     164:	4902                	lw	s2,0(sp)
     166:	4492                	lw	s1,4(sp)
     168:	4422                	lw	s0,8(sp)
     16a:	40b2                	lw	ra,12(sp)
     16c:	0141                	addi	sp,sp,16
     16e:	8082                	ret

00000170 <Delay_Init>:
     170:	200007b7          	lui	a5,0x20000
     174:	0647a783          	lw	a5,100(a5) # 20000064 <SystemCoreClock>
     178:	007a1737          	lui	a4,0x7a1
     17c:	20070713          	addi	a4,a4,512 # 7a1200 <_data_lma+0x79f9bc>
     180:	02e7d7b3          	divu	a5,a5,a4
     184:	0ff7f793          	zext.b	a5,a5
     188:	80f18b23          	sb	a5,-2026(gp) # 20000076 <p_us>
     18c:	3e800713          	li	a4,1000
     190:	02e787b3          	mul	a5,a5,a4
     194:	80f19a23          	sh	a5,-2028(gp) # 20000074 <p_ms>
     198:	8082                	ret

0000019a <Delay_Ms>:
     19a:	e000f7b7          	lui	a5,0xe000f
     19e:	43d8                	lw	a4,4(a5)
     1a0:	4681                	li	a3,0
     1a2:	9b79                	andi	a4,a4,-2
     1a4:	c3d8                	sw	a4,4(a5)
     1a6:	8141d703          	lhu	a4,-2028(gp) # 20000074 <p_ms>
     1aa:	02a70633          	mul	a2,a4,a0
     1ae:	cb90                	sw	a2,16(a5)
     1b0:	cbd4                	sw	a3,20(a5)
     1b2:	4398                	lw	a4,0(a5)
     1b4:	01076713          	ori	a4,a4,16
     1b8:	c398                	sw	a4,0(a5)
     1ba:	4398                	lw	a4,0(a5)
     1bc:	02176713          	ori	a4,a4,33
     1c0:	c398                	sw	a4,0(a5)
     1c2:	43d8                	lw	a4,4(a5)
     1c4:	8b05                	andi	a4,a4,1
     1c6:	df75                	beqz	a4,1c2 <Delay_Ms+0x28>
     1c8:	4398                	lw	a4,0(a5)
     1ca:	9b79                	andi	a4,a4,-2
     1cc:	c398                	sw	a4,0(a5)
     1ce:	8082                	ret

000001d0 <SDI_Printf_Enable>:
     1d0:	f71ff2ef          	jal	t0,140 <__riscv_save_0>
     1d4:	e00007b7          	lui	a5,0xe0000
     1d8:	3807a023          	sw	zero,896(a5) # e0000380 <_eusrstack+0xbfffb380>
     1dc:	3f51                	jal	170 <Delay_Init>
     1de:	4505                	li	a0,1
     1e0:	3f6d                	jal	19a <Delay_Ms>
     1e2:	b749                	j	164 <__riscv_restore_0>

000001e4 <_write>:
     1e4:	8532                	mv	a0,a2
     1e6:	8732                	mv	a4,a2
     1e8:	e0000837          	lui	a6,0xe0000
     1ec:	489d                	li	a7,7
     1ee:	38080693          	addi	a3,a6,896 # e0000380 <_eusrstack+0xbfffb380>
     1f2:	429c                	lw	a5,0(a3)
     1f4:	ffed                	bnez	a5,1ee <_write+0xa>
     1f6:	00458783          	lb	a5,4(a1)
     1fa:	00558603          	lb	a2,5(a1)
     1fe:	07a2                	slli	a5,a5,0x8
     200:	0642                	slli	a2,a2,0x10
     202:	8fd1                	or	a5,a5,a2
     204:	00358603          	lb	a2,3(a1)
     208:	8fd1                	or	a5,a5,a2
     20a:	00658603          	lb	a2,6(a1)
     20e:	0662                	slli	a2,a2,0x18
     210:	8fd1                	or	a5,a5,a2
     212:	38480613          	addi	a2,a6,900
     216:	c21c                	sw	a5,0(a2)
     218:	00058783          	lb	a5,0(a1)
     21c:	07a2                	slli	a5,a5,0x8
     21e:	02e8d063          	bge	a7,a4,23e <_write+0x5a>
     222:	00258603          	lb	a2,2(a1)
     226:	1765                	addi	a4,a4,-7
     228:	059d                	addi	a1,a1,7
     22a:	0662                	slli	a2,a2,0x18
     22c:	8fd1                	or	a5,a5,a2
     22e:	ffa58603          	lb	a2,-6(a1)
     232:	0642                	slli	a2,a2,0x10
     234:	8fd1                	or	a5,a5,a2
     236:	0077e793          	ori	a5,a5,7
     23a:	c29c                	sw	a5,0(a3)
     23c:	bf4d                	j	1ee <_write+0xa>
     23e:	8fd9                	or	a5,a5,a4
     240:	00158703          	lb	a4,1(a1)
     244:	0742                	slli	a4,a4,0x10
     246:	8fd9                	or	a5,a5,a4
     248:	00258703          	lb	a4,2(a1)
     24c:	0762                	slli	a4,a4,0x18
     24e:	8fd9                	or	a5,a5,a4
     250:	c29c                	sw	a5,0(a3)
     252:	8082                	ret

00000254 <_sbrk>:
     254:	200006b7          	lui	a3,0x20000
     258:	87aa                	mv	a5,a0
     25a:	0606a503          	lw	a0,96(a3) # 20000060 <curbrk.0>
     25e:	83418713          	addi	a4,gp,-1996 # 20000094 <_ebss>
     262:	97aa                	add	a5,a5,a0
     264:	00e7eb63          	bltu	a5,a4,27a <_sbrk+0x26>
     268:	20005737          	lui	a4,0x20005
     26c:	80070713          	addi	a4,a4,-2048 # 20004800 <_heap_end>
     270:	00f76563          	bltu	a4,a5,27a <_sbrk+0x26>
     274:	06f6a023          	sw	a5,96(a3)
     278:	8082                	ret
     27a:	557d                	li	a0,-1
     27c:	8082                	ret

0000027e <GPIO_Init>:
     27e:	459c                	lw	a5,8(a1)
     280:	0107f713          	andi	a4,a5,16
     284:	00f7f813          	andi	a6,a5,15
     288:	c701                	beqz	a4,290 <GPIO_Init+0x12>
     28a:	41d8                	lw	a4,4(a1)
     28c:	00e86833          	or	a6,a6,a4
     290:	40022737          	lui	a4,0x40022
     294:	5b14                	lw	a3,48(a4)
     296:	0f000737          	lui	a4,0xf000
     29a:	8f75                	and	a4,a4,a3
     29c:	eb45                	bnez	a4,34c <GPIO_Init+0xce>
     29e:	4685                	li	a3,1
     2a0:	80d18ba3          	sb	a3,-2025(gp) # 20000077 <MCU_Version>
     2a4:	40011737          	lui	a4,0x40011
     2a8:	00e51563          	bne	a0,a4,2b2 <GPIO_Init+0x34>
     2ac:	219a                	.2byte	0x219a
     2ae:	8335                	srli	a4,a4,0xd
     2b0:	a19a                	.2byte	0xa19a
     2b2:	218e                	.2byte	0x218e
     2b4:	0ff5f713          	zext.b	a4,a1
     2b8:	c331                	beqz	a4,2fc <GPIO_Init+0x7e>
     2ba:	4118                	lw	a4,0(a0)
     2bc:	4681                	li	a3,0
     2be:	4e05                	li	t3,1
     2c0:	02800e93          	li	t4,40
     2c4:	4f3d                	li	t5,15
     2c6:	04800f93          	li	t6,72
     2ca:	4321                	li	t1,8
     2cc:	00de1633          	sll	a2,t3,a3
     2d0:	00c5f8b3          	and	a7,a1,a2
     2d4:	03161063          	bne	a2,a7,2f4 <GPIO_Init+0x76>
     2d8:	09d79263          	bne	a5,t4,35c <GPIO_Init+0xde>
     2dc:	c950                	sw	a2,20(a0)
     2de:	00269613          	slli	a2,a3,0x2
     2e2:	00cf18b3          	sll	a7,t5,a2
     2e6:	fff8c893          	not	a7,a7
     2ea:	00e8f733          	and	a4,a7,a4
     2ee:	00c81633          	sll	a2,a6,a2
     2f2:	8f51                	or	a4,a4,a2
     2f4:	0685                	addi	a3,a3,1
     2f6:	fc669be3          	bne	a3,t1,2cc <GPIO_Init+0x4e>
     2fa:	c118                	sw	a4,0(a0)
     2fc:	0ff00713          	li	a4,255
     300:	04b77563          	bgeu	a4,a1,34a <GPIO_Init+0xcc>
     304:	4154                	lw	a3,4(a0)
     306:	4601                	li	a2,0
     308:	4e05                	li	t3,1
     30a:	02800e93          	li	t4,40
     30e:	04800f13          	li	t5,72
     312:	4321                	li	t1,8
     314:	00860713          	addi	a4,a2,8
     318:	00ee1733          	sll	a4,t3,a4
     31c:	00e5f8b3          	and	a7,a1,a4
     320:	03171163          	bne	a4,a7,342 <GPIO_Init+0xc4>
     324:	05d79063          	bne	a5,t4,364 <GPIO_Init+0xe6>
     328:	c958                	sw	a4,20(a0)
     32a:	00261893          	slli	a7,a2,0x2
     32e:	473d                	li	a4,15
     330:	01171733          	sll	a4,a4,a7
     334:	fff74713          	not	a4,a4
     338:	8ef9                	and	a3,a3,a4
     33a:	011818b3          	sll	a7,a6,a7
     33e:	00d8e6b3          	or	a3,a7,a3
     342:	0605                	addi	a2,a2,1
     344:	fc6618e3          	bne	a2,t1,314 <GPIO_Init+0x96>
     348:	c154                	sw	a3,4(a0)
     34a:	8082                	ret
     34c:	40011737          	lui	a4,0x40011
     350:	f6e511e3          	bne	a0,a4,2b2 <GPIO_Init+0x34>
     354:	8171c703          	lbu	a4,-2025(gp) # 20000077 <MCU_Version>
     358:	df29                	beqz	a4,2b2 <GPIO_Init+0x34>
     35a:	bf89                	j	2ac <GPIO_Init+0x2e>
     35c:	f9f791e3          	bne	a5,t6,2de <GPIO_Init+0x60>
     360:	c910                	sw	a2,16(a0)
     362:	bfb5                	j	2de <GPIO_Init+0x60>
     364:	fde793e3          	bne	a5,t5,32a <GPIO_Init+0xac>
     368:	c918                	sw	a4,16(a0)
     36a:	b7c1                	j	32a <GPIO_Init+0xac>

0000036c <NVIC_PriorityGroupConfig>:
     36c:	80a1ac23          	sw	a0,-2024(gp) # 20000078 <NVIC_Priority_Group>
     370:	8082                	ret

00000372 <RCC_APB2PeriphClockCmd>:
     372:	c599                	beqz	a1,380 <RCC_APB2PeriphClockCmd+0xe>
     374:	40021737          	lui	a4,0x40021
     378:	4f1c                	lw	a5,24(a4)
     37a:	8fc9                	or	a5,a5,a0
     37c:	cf1c                	sw	a5,24(a4)
     37e:	8082                	ret
     380:	400217b7          	lui	a5,0x40021
     384:	4f98                	lw	a4,24(a5)
     386:	fff54513          	not	a0,a0
     38a:	8d79                	and	a0,a0,a4
     38c:	cf88                	sw	a0,24(a5)
     38e:	8082                	ret

00000390 <NMI_Handler>:
     390:	a001                	j	390 <NMI_Handler>

00000392 <HardFault_Handler>:
     392:	beef07b7          	lui	a5,0xbeef0
     396:	e000e737          	lui	a4,0xe000e
     39a:	08078793          	addi	a5,a5,128 # beef0080 <_eusrstack+0x9eeeb080>
     39e:	c73c                	sw	a5,72(a4)
     3a0:	a001                	j	3a0 <HardFault_Handler+0xe>

000003a2 <GPIO_Toggle_INIT>:
     3a2:	d9fff2ef          	jal	t0,140 <__riscv_save_0>
     3a6:	1141                	addi	sp,sp,-16
     3a8:	4585                	li	a1,1
     3aa:	4511                	li	a0,4
     3ac:	c202                	sw	zero,4(sp)
     3ae:	c402                	sw	zero,8(sp)
     3b0:	c602                	sw	zero,12(sp)
     3b2:	37c1                	jal	372 <RCC_APB2PeriphClockCmd>
     3b4:	4785                	li	a5,1
     3b6:	827c                	.2byte	0x827c
     3b8:	40011537          	lui	a0,0x40011
     3bc:	47c1                	li	a5,16
     3be:	c63e                	sw	a5,12(sp)
     3c0:	004c                	addi	a1,sp,4
     3c2:	478d                	li	a5,3
     3c4:	80050513          	addi	a0,a0,-2048 # 40010800 <_eusrstack+0x2000b800>
     3c8:	c43e                	sw	a5,8(sp)
     3ca:	3d55                	jal	27e <GPIO_Init>
     3cc:	0141                	addi	sp,sp,16
     3ce:	bb59                	j	164 <__riscv_restore_0>

000003d0 <main>:
     3d0:	d71ff2ef          	jal	t0,140 <__riscv_save_0>
     3d4:	1141                	addi	sp,sp,-16
     3d6:	4505                	li	a0,1
     3d8:	3f51                	jal	36c <NVIC_PriorityGroupConfig>
     3da:	3b59                	jal	170 <Delay_Init>
     3dc:	3bd5                	jal	1d0 <SDI_Printf_Enable>
     3de:	200007b7          	lui	a5,0x20000
     3e2:	0647a583          	lw	a1,100(a5) # 20000064 <SystemCoreClock>
     3e6:	6505                	lui	a0,0x1
     3e8:	72c50513          	addi	a0,a0,1836 # 172c <_read+0xe>
     3ec:	2a59                	jal	582 <iprintf>
     3ee:	3f55                	jal	3a2 <GPIO_Toggle_INIT>
     3f0:	4581                	li	a1,0
     3f2:	6485                	lui	s1,0x1
     3f4:	3e800513          	li	a0,1000
     3f8:	c62e                	sw	a1,12(sp)
     3fa:	3345                	jal	19a <Delay_Ms>
     3fc:	45b2                	lw	a1,12(sp)
     3fe:	73c48513          	addi	a0,s1,1852 # 173c <_read+0x1e>
     402:	00158413          	addi	s0,a1,1
     406:	0ff47413          	zext.b	s0,s0
     40a:	2aa5                	jal	582 <iprintf>
     40c:	85a2                	mv	a1,s0
     40e:	b7dd                	j	3f4 <main+0x24>

00000410 <SystemInit>:
     410:	400217b7          	lui	a5,0x40021
     414:	4398                	lw	a4,0(a5)
     416:	f0ff06b7          	lui	a3,0xf0ff0
     41a:	1141                	addi	sp,sp,-16
     41c:	00176713          	ori	a4,a4,1
     420:	c398                	sw	a4,0(a5)
     422:	43d8                	lw	a4,4(a5)
     424:	00020637          	lui	a2,0x20
     428:	8f75                	and	a4,a4,a3
     42a:	c3d8                	sw	a4,4(a5)
     42c:	4398                	lw	a4,0(a5)
     42e:	fef706b7          	lui	a3,0xfef70
     432:	16fd                	addi	a3,a3,-1 # fef6ffff <_eusrstack+0xdef6afff>
     434:	8f75                	and	a4,a4,a3
     436:	c398                	sw	a4,0(a5)
     438:	4398                	lw	a4,0(a5)
     43a:	fffc06b7          	lui	a3,0xfffc0
     43e:	16fd                	addi	a3,a3,-1 # fffbffff <_eusrstack+0xdffbafff>
     440:	8f75                	and	a4,a4,a3
     442:	c398                	sw	a4,0(a5)
     444:	43d8                	lw	a4,4(a5)
     446:	ff0106b7          	lui	a3,0xff010
     44a:	16fd                	addi	a3,a3,-1 # ff00ffff <_eusrstack+0xdf00afff>
     44c:	8f75                	and	a4,a4,a3
     44e:	c3d8                	sw	a4,4(a5)
     450:	009f0737          	lui	a4,0x9f0
     454:	c798                	sw	a4,8(a5)
     456:	c402                	sw	zero,8(sp)
     458:	c602                	sw	zero,12(sp)
     45a:	4398                	lw	a4,0(a5)
     45c:	66c1                	lui	a3,0x10
     45e:	8f55                	or	a4,a4,a3
     460:	c398                	sw	a4,0(a5)
     462:	400216b7          	lui	a3,0x40021
     466:	6705                	lui	a4,0x1
     468:	429c                	lw	a5,0(a3)
     46a:	8ff1                	and	a5,a5,a2
     46c:	c63e                	sw	a5,12(sp)
     46e:	47a2                	lw	a5,8(sp)
     470:	0785                	addi	a5,a5,1 # 40021001 <_eusrstack+0x2001c001>
     472:	c43e                	sw	a5,8(sp)
     474:	47b2                	lw	a5,12(sp)
     476:	e781                	bnez	a5,47e <SystemInit+0x6e>
     478:	47a2                	lw	a5,8(sp)
     47a:	fee797e3          	bne	a5,a4,468 <SystemInit+0x58>
     47e:	400217b7          	lui	a5,0x40021
     482:	439c                	lw	a5,0(a5)
     484:	00020737          	lui	a4,0x20
     488:	8ff9                	and	a5,a5,a4
     48a:	c7b5                	beqz	a5,4f6 <SystemInit+0xe6>
     48c:	4785                	li	a5,1
     48e:	c63e                	sw	a5,12(sp)
     490:	4732                	lw	a4,12(sp)
     492:	4785                	li	a5,1
     494:	04f71f63          	bne	a4,a5,4f2 <SystemInit+0xe2>
     498:	400217b7          	lui	a5,0x40021
     49c:	43d8                	lw	a4,4(a5)
     49e:	ffc106b7          	lui	a3,0xffc10
     4a2:	16fd                	addi	a3,a3,-1 # ffc0ffff <_eusrstack+0xdfc0afff>
     4a4:	c3d8                	sw	a4,4(a5)
     4a6:	43d8                	lw	a4,4(a5)
     4a8:	c3d8                	sw	a4,4(a5)
     4aa:	43d8                	lw	a4,4(a5)
     4ac:	40076713          	ori	a4,a4,1024
     4b0:	c3d8                	sw	a4,4(a5)
     4b2:	43d8                	lw	a4,4(a5)
     4b4:	8f75                	and	a4,a4,a3
     4b6:	c3d8                	sw	a4,4(a5)
     4b8:	43d8                	lw	a4,4(a5)
     4ba:	002906b7          	lui	a3,0x290
     4be:	8f55                	or	a4,a4,a3
     4c0:	c3d8                	sw	a4,4(a5)
     4c2:	4398                	lw	a4,0(a5)
     4c4:	010006b7          	lui	a3,0x1000
     4c8:	8f55                	or	a4,a4,a3
     4ca:	c398                	sw	a4,0(a5)
     4cc:	020006b7          	lui	a3,0x2000
     4d0:	4398                	lw	a4,0(a5)
     4d2:	8f75                	and	a4,a4,a3
     4d4:	df75                	beqz	a4,4d0 <SystemInit+0xc0>
     4d6:	43d8                	lw	a4,4(a5)
     4d8:	400216b7          	lui	a3,0x40021
     4dc:	9b71                	andi	a4,a4,-4
     4de:	c3d8                	sw	a4,4(a5)
     4e0:	43d8                	lw	a4,4(a5)
     4e2:	00276713          	ori	a4,a4,2
     4e6:	c3d8                	sw	a4,4(a5)
     4e8:	4721                	li	a4,8
     4ea:	42dc                	lw	a5,4(a3)
     4ec:	8bb1                	andi	a5,a5,12
     4ee:	fee79ee3          	bne	a5,a4,4ea <SystemInit+0xda>
     4f2:	0141                	addi	sp,sp,16
     4f4:	8082                	ret
     4f6:	c602                	sw	zero,12(sp)
     4f8:	bf61                	j	490 <SystemInit+0x80>

000004fa <ADC1_2_IRQHandler>:
     4fa:	a001                	j	4fa <ADC1_2_IRQHandler>

000004fc <handle_reset>:
     4fc:	20000197          	auipc	gp,0x20000
     500:	36418193          	addi	gp,gp,868 # 20000860 <__global_pointer$>
     504:	20005117          	auipc	sp,0x20005
     508:	afc10113          	addi	sp,sp,-1284 # 20005000 <_eusrstack>
     50c:	00001517          	auipc	a0,0x1
     510:	33850513          	addi	a0,a0,824 # 1844 <_data_lma>
     514:	20000597          	auipc	a1,0x20000
     518:	aec58593          	addi	a1,a1,-1300 # 20000000 <impure_data>
     51c:	81418613          	addi	a2,gp,-2028 # 20000074 <p_ms>
     520:	00c5fa63          	bgeu	a1,a2,534 <handle_reset+0x38>
     524:	00052283          	lw	t0,0(a0)
     528:	0055a023          	sw	t0,0(a1)
     52c:	0511                	addi	a0,a0,4
     52e:	0591                	addi	a1,a1,4
     530:	fec5eae3          	bltu	a1,a2,524 <handle_reset+0x28>
     534:	81418513          	addi	a0,gp,-2028 # 20000074 <p_ms>
     538:	83418593          	addi	a1,gp,-1996 # 20000094 <_ebss>
     53c:	00b57763          	bgeu	a0,a1,54a <handle_reset+0x4e>
     540:	00052023          	sw	zero,0(a0)
     544:	0511                	addi	a0,a0,4
     546:	feb56de3          	bltu	a0,a1,540 <handle_reset+0x44>
     54a:	42fd                	li	t0,31
     54c:	bc029073          	csrw	0xbc0,t0
     550:	428d                	li	t0,3
     552:	80429073          	csrw	0x804,t0
     556:	08800293          	li	t0,136
     55a:	30029073          	csrw	mstatus,t0
     55e:	00000297          	auipc	t0,0x0
     562:	aa628293          	addi	t0,t0,-1370 # 4 <_einit>
     566:	0032e293          	ori	t0,t0,3
     56a:	30529073          	csrw	mtvec,t0
     56e:	ea3ff0ef          	jal	ra,410 <SystemInit>
     572:	00000297          	auipc	t0,0x0
     576:	e5e28293          	addi	t0,t0,-418 # 3d0 <main>
     57a:	34129073          	csrw	mepc,t0
     57e:	30200073          	mret

00000582 <iprintf>:
     582:	715d                	addi	sp,sp,-80
     584:	d422                	sw	s0,40(sp)
     586:	d606                	sw	ra,44(sp)
     588:	842a                	mv	s0,a0
     58a:	da2e                	sw	a1,52(sp)
     58c:	dc32                	sw	a2,56(sp)
     58e:	de36                	sw	a3,60(sp)
     590:	c0ba                	sw	a4,64(sp)
     592:	c2be                	sw	a5,68(sp)
     594:	c4c2                	sw	a6,72(sp)
     596:	c6c6                	sw	a7,76(sp)
     598:	8081a503          	lw	a0,-2040(gp) # 20000068 <_impure_ptr>
     59c:	c511                	beqz	a0,5a8 <iprintf+0x26>
     59e:	4d1c                	lw	a5,24(a0)
     5a0:	e781                	bnez	a5,5a8 <iprintf+0x26>
     5a2:	c62a                	sw	a0,12(sp)
     5a4:	20c5                	jal	684 <__sinit>
     5a6:	4532                	lw	a0,12(sp)
     5a8:	450c                	lw	a1,8(a0)
     5aa:	1854                	addi	a3,sp,52
     5ac:	8622                	mv	a2,s0
     5ae:	ce36                	sw	a3,28(sp)
     5b0:	2919                	jal	9c6 <_vfiprintf_r>
     5b2:	50b2                	lw	ra,44(sp)
     5b4:	5422                	lw	s0,40(sp)
     5b6:	6161                	addi	sp,sp,80
     5b8:	8082                	ret

000005ba <std>:
     5ba:	1141                	addi	sp,sp,-16
     5bc:	c422                	sw	s0,8(sp)
     5be:	c606                	sw	ra,12(sp)
     5c0:	842a                	mv	s0,a0
     5c2:	a54e                	.2byte	0xa54e
     5c4:	a572                	.2byte	0xa572
     5c6:	00052023          	sw	zero,0(a0)
     5ca:	00052223          	sw	zero,4(a0)
     5ce:	00052423          	sw	zero,8(a0)
     5d2:	06052223          	sw	zero,100(a0)
     5d6:	00052823          	sw	zero,16(a0)
     5da:	00052a23          	sw	zero,20(a0)
     5de:	00052c23          	sw	zero,24(a0)
     5e2:	4621                	li	a2,8
     5e4:	4581                	li	a1,0
     5e6:	05c50513          	addi	a0,a0,92
     5ea:	3e19                	jal	100 <memset>
     5ec:	00000797          	auipc	a5,0x0
     5f0:	6ba78793          	addi	a5,a5,1722 # ca6 <__sread>
     5f4:	d05c                	sw	a5,36(s0)
     5f6:	00000797          	auipc	a5,0x0
     5fa:	6de78793          	addi	a5,a5,1758 # cd4 <__swrite>
     5fe:	d41c                	sw	a5,40(s0)
     600:	00000797          	auipc	a5,0x0
     604:	71c78793          	addi	a5,a5,1820 # d1c <__sseek>
     608:	d45c                	sw	a5,44(s0)
     60a:	00000797          	auipc	a5,0x0
     60e:	74278793          	addi	a5,a5,1858 # d4c <__sclose>
     612:	40b2                	lw	ra,12(sp)
     614:	d000                	sw	s0,32(s0)
     616:	d81c                	sw	a5,48(s0)
     618:	4422                	lw	s0,8(sp)
     61a:	0141                	addi	sp,sp,16
     61c:	8082                	ret

0000061e <_cleanup_r>:
     61e:	00001597          	auipc	a1,0x1
     622:	a6858593          	addi	a1,a1,-1432 # 1086 <_fflush_r>
     626:	a2ad                	j	790 <_fwalk_reent>

00000628 <__sfmoreglue>:
     628:	1141                	addi	sp,sp,-16
     62a:	c226                	sw	s1,4(sp)
     62c:	06800793          	li	a5,104
     630:	fff58493          	addi	s1,a1,-1
     634:	02f484b3          	mul	s1,s1,a5
     638:	c04a                	sw	s2,0(sp)
     63a:	892e                	mv	s2,a1
     63c:	c422                	sw	s0,8(sp)
     63e:	c606                	sw	ra,12(sp)
     640:	07448593          	addi	a1,s1,116
     644:	2439                	jal	852 <_malloc_r>
     646:	842a                	mv	s0,a0
     648:	c919                	beqz	a0,65e <__sfmoreglue+0x36>
     64a:	00052023          	sw	zero,0(a0)
     64e:	01252223          	sw	s2,4(a0)
     652:	0531                	addi	a0,a0,12
     654:	c408                	sw	a0,8(s0)
     656:	06848613          	addi	a2,s1,104
     65a:	4581                	li	a1,0
     65c:	3455                	jal	100 <memset>
     65e:	40b2                	lw	ra,12(sp)
     660:	8522                	mv	a0,s0
     662:	4422                	lw	s0,8(sp)
     664:	4492                	lw	s1,4(sp)
     666:	4902                	lw	s2,0(sp)
     668:	0141                	addi	sp,sp,16
     66a:	8082                	ret

0000066c <__sfp_lock_acquire>:
     66c:	82018513          	addi	a0,gp,-2016 # 20000080 <__lock___sfp_recursive_mutex>
     670:	a269                	j	7fa <__retarget_lock_acquire_recursive>

00000672 <__sfp_lock_release>:
     672:	82018513          	addi	a0,gp,-2016 # 20000080 <__lock___sfp_recursive_mutex>
     676:	a259                	j	7fc <__retarget_lock_release_recursive>

00000678 <__sinit_lock_acquire>:
     678:	82418513          	addi	a0,gp,-2012 # 20000084 <__lock___sinit_recursive_mutex>
     67c:	aabd                	j	7fa <__retarget_lock_acquire_recursive>

0000067e <__sinit_lock_release>:
     67e:	82418513          	addi	a0,gp,-2012 # 20000084 <__lock___sinit_recursive_mutex>
     682:	aaad                	j	7fc <__retarget_lock_release_recursive>

00000684 <__sinit>:
     684:	1141                	addi	sp,sp,-16
     686:	c422                	sw	s0,8(sp)
     688:	c606                	sw	ra,12(sp)
     68a:	842a                	mv	s0,a0
     68c:	37f5                	jal	678 <__sinit_lock_acquire>
     68e:	4c1c                	lw	a5,24(s0)
     690:	c789                	beqz	a5,69a <__sinit+0x16>
     692:	4422                	lw	s0,8(sp)
     694:	40b2                	lw	ra,12(sp)
     696:	0141                	addi	sp,sp,16
     698:	b7dd                	j	67e <__sinit_lock_release>
     69a:	00000797          	auipc	a5,0x0
     69e:	f8478793          	addi	a5,a5,-124 # 61e <_cleanup_r>
     6a2:	d41c                	sw	a5,40(s0)
     6a4:	04042423          	sw	zero,72(s0)
     6a8:	04042623          	sw	zero,76(s0)
     6ac:	04042823          	sw	zero,80(s0)
     6b0:	8101a783          	lw	a5,-2032(gp) # 20000070 <_global_impure_ptr>
     6b4:	00879463          	bne	a5,s0,6bc <__sinit+0x38>
     6b8:	4785                	li	a5,1
     6ba:	cc1c                	sw	a5,24(s0)
     6bc:	8522                	mv	a0,s0
     6be:	203d                	jal	6ec <__sfp>
     6c0:	c048                	sw	a0,4(s0)
     6c2:	8522                	mv	a0,s0
     6c4:	2025                	jal	6ec <__sfp>
     6c6:	c408                	sw	a0,8(s0)
     6c8:	8522                	mv	a0,s0
     6ca:	200d                	jal	6ec <__sfp>
     6cc:	c448                	sw	a0,12(s0)
     6ce:	4048                	lw	a0,4(s0)
     6d0:	4601                	li	a2,0
     6d2:	4591                	li	a1,4
     6d4:	35dd                	jal	5ba <std>
     6d6:	4408                	lw	a0,8(s0)
     6d8:	4605                	li	a2,1
     6da:	45a5                	li	a1,9
     6dc:	3df9                	jal	5ba <std>
     6de:	4448                	lw	a0,12(s0)
     6e0:	4609                	li	a2,2
     6e2:	45c9                	li	a1,18
     6e4:	3dd9                	jal	5ba <std>
     6e6:	4785                	li	a5,1
     6e8:	cc1c                	sw	a5,24(s0)
     6ea:	b765                	j	692 <__sinit+0xe>

000006ec <__sfp>:
     6ec:	1141                	addi	sp,sp,-16
     6ee:	c226                	sw	s1,4(sp)
     6f0:	c04a                	sw	s2,0(sp)
     6f2:	c606                	sw	ra,12(sp)
     6f4:	c422                	sw	s0,8(sp)
     6f6:	892a                	mv	s2,a0
     6f8:	3f95                	jal	66c <__sfp_lock_acquire>
     6fa:	8101a483          	lw	s1,-2032(gp) # 20000070 <_global_impure_ptr>
     6fe:	4c9c                	lw	a5,24(s1)
     700:	e399                	bnez	a5,706 <__sfp+0x1a>
     702:	8526                	mv	a0,s1
     704:	3741                	jal	684 <__sinit>
     706:	04848493          	addi	s1,s1,72
     70a:	4480                	lw	s0,8(s1)
     70c:	40dc                	lw	a5,4(s1)
     70e:	17fd                	addi	a5,a5,-1
     710:	0007d663          	bgez	a5,71c <__sfp+0x30>
     714:	409c                	lw	a5,0(s1)
     716:	c3b5                	beqz	a5,77a <__sfp+0x8e>
     718:	4084                	lw	s1,0(s1)
     71a:	bfc5                	j	70a <__sfp+0x1e>
     71c:	00c41703          	lh	a4,12(s0)
     720:	eb31                	bnez	a4,774 <__sfp+0x88>
     722:	77c1                	lui	a5,0xffff0
     724:	0785                	addi	a5,a5,1 # ffff0001 <_eusrstack+0xdffeb001>
     726:	c45c                	sw	a5,12(s0)
     728:	05840513          	addi	a0,s0,88
     72c:	06042223          	sw	zero,100(s0)
     730:	20e1                	jal	7f8 <__retarget_lock_init_recursive>
     732:	3781                	jal	672 <__sfp_lock_release>
     734:	4621                	li	a2,8
     736:	00042023          	sw	zero,0(s0)
     73a:	00042423          	sw	zero,8(s0)
     73e:	00042223          	sw	zero,4(s0)
     742:	00042823          	sw	zero,16(s0)
     746:	00042a23          	sw	zero,20(s0)
     74a:	00042c23          	sw	zero,24(s0)
     74e:	4581                	li	a1,0
     750:	05c40513          	addi	a0,s0,92
     754:	3275                	jal	100 <memset>
     756:	02042a23          	sw	zero,52(s0)
     75a:	02042c23          	sw	zero,56(s0)
     75e:	04042423          	sw	zero,72(s0)
     762:	04042623          	sw	zero,76(s0)
     766:	40b2                	lw	ra,12(sp)
     768:	8522                	mv	a0,s0
     76a:	4422                	lw	s0,8(sp)
     76c:	4492                	lw	s1,4(sp)
     76e:	4902                	lw	s2,0(sp)
     770:	0141                	addi	sp,sp,16
     772:	8082                	ret
     774:	06840413          	addi	s0,s0,104
     778:	bf59                	j	70e <__sfp+0x22>
     77a:	4591                	li	a1,4
     77c:	854a                	mv	a0,s2
     77e:	356d                	jal	628 <__sfmoreglue>
     780:	c088                	sw	a0,0(s1)
     782:	842a                	mv	s0,a0
     784:	f951                	bnez	a0,718 <__sfp+0x2c>
     786:	35f5                	jal	672 <__sfp_lock_release>
     788:	47b1                	li	a5,12
     78a:	00f92023          	sw	a5,0(s2)
     78e:	bfe1                	j	766 <__sfp+0x7a>

00000790 <_fwalk_reent>:
     790:	7179                	addi	sp,sp,-48
     792:	d422                	sw	s0,40(sp)
     794:	d04a                	sw	s2,32(sp)
     796:	ce4e                	sw	s3,28(sp)
     798:	cc52                	sw	s4,24(sp)
     79a:	c85a                	sw	s6,16(sp)
     79c:	c65e                	sw	s7,12(sp)
     79e:	d606                	sw	ra,44(sp)
     7a0:	d226                	sw	s1,36(sp)
     7a2:	ca56                	sw	s5,20(sp)
     7a4:	892a                	mv	s2,a0
     7a6:	8a2e                	mv	s4,a1
     7a8:	04850413          	addi	s0,a0,72
     7ac:	4981                	li	s3,0
     7ae:	4b05                	li	s6,1
     7b0:	5bfd                	li	s7,-1
     7b2:	4404                	lw	s1,8(s0)
     7b4:	00442a83          	lw	s5,4(s0)
     7b8:	1afd                	addi	s5,s5,-1
     7ba:	020ad063          	bgez	s5,7da <_fwalk_reent+0x4a>
     7be:	4000                	lw	s0,0(s0)
     7c0:	f86d                	bnez	s0,7b2 <_fwalk_reent+0x22>
     7c2:	50b2                	lw	ra,44(sp)
     7c4:	5422                	lw	s0,40(sp)
     7c6:	5492                	lw	s1,36(sp)
     7c8:	5902                	lw	s2,32(sp)
     7ca:	4a62                	lw	s4,24(sp)
     7cc:	4ad2                	lw	s5,20(sp)
     7ce:	4b42                	lw	s6,16(sp)
     7d0:	4bb2                	lw	s7,12(sp)
     7d2:	854e                	mv	a0,s3
     7d4:	49f2                	lw	s3,28(sp)
     7d6:	6145                	addi	sp,sp,48
     7d8:	8082                	ret
     7da:	24de                	.2byte	0x24de
     7dc:	00fb7b63          	bgeu	s6,a5,7f2 <_fwalk_reent+0x62>
     7e0:	00e49783          	lh	a5,14(s1)
     7e4:	01778763          	beq	a5,s7,7f2 <_fwalk_reent+0x62>
     7e8:	85a6                	mv	a1,s1
     7ea:	854a                	mv	a0,s2
     7ec:	9a02                	jalr	s4
     7ee:	00a9e9b3          	or	s3,s3,a0
     7f2:	06848493          	addi	s1,s1,104
     7f6:	b7c9                	j	7b8 <_fwalk_reent+0x28>

000007f8 <__retarget_lock_init_recursive>:
     7f8:	8082                	ret

000007fa <__retarget_lock_acquire_recursive>:
     7fa:	8082                	ret

000007fc <__retarget_lock_release_recursive>:
     7fc:	8082                	ret

000007fe <sbrk_aligned>:
     7fe:	1141                	addi	sp,sp,-16
     800:	c04a                	sw	s2,0(sp)
     802:	82818913          	addi	s2,gp,-2008 # 20000088 <__malloc_sbrk_start>
     806:	00092783          	lw	a5,0(s2)
     80a:	c422                	sw	s0,8(sp)
     80c:	c226                	sw	s1,4(sp)
     80e:	c606                	sw	ra,12(sp)
     810:	84aa                	mv	s1,a0
     812:	842e                	mv	s0,a1
     814:	e789                	bnez	a5,81e <__stack_size+0x1e>
     816:	4581                	li	a1,0
     818:	219d                	jal	c7e <_sbrk_r>
     81a:	00a92023          	sw	a0,0(s2)
     81e:	85a2                	mv	a1,s0
     820:	8526                	mv	a0,s1
     822:	29b1                	jal	c7e <_sbrk_r>
     824:	597d                	li	s2,-1
     826:	01251a63          	bne	a0,s2,83a <__stack_size+0x3a>
     82a:	547d                	li	s0,-1
     82c:	40b2                	lw	ra,12(sp)
     82e:	8522                	mv	a0,s0
     830:	4422                	lw	s0,8(sp)
     832:	4492                	lw	s1,4(sp)
     834:	4902                	lw	s2,0(sp)
     836:	0141                	addi	sp,sp,16
     838:	8082                	ret
     83a:	00350413          	addi	s0,a0,3
     83e:	9871                	andi	s0,s0,-4
     840:	fe8506e3          	beq	a0,s0,82c <__stack_size+0x2c>
     844:	40a405b3          	sub	a1,s0,a0
     848:	8526                	mv	a0,s1
     84a:	2915                	jal	c7e <_sbrk_r>
     84c:	ff2510e3          	bne	a0,s2,82c <__stack_size+0x2c>
     850:	bfe9                	j	82a <__stack_size+0x2a>

00000852 <_malloc_r>:
     852:	1101                	addi	sp,sp,-32
     854:	ca26                	sw	s1,20(sp)
     856:	00358493          	addi	s1,a1,3
     85a:	98f1                	andi	s1,s1,-4
     85c:	c84a                	sw	s2,16(sp)
     85e:	ce06                	sw	ra,28(sp)
     860:	cc22                	sw	s0,24(sp)
     862:	c64e                	sw	s3,12(sp)
     864:	04a1                	addi	s1,s1,8
     866:	47b1                	li	a5,12
     868:	892a                	mv	s2,a0
     86a:	06f4f463          	bgeu	s1,a5,8d2 <_malloc_r+0x80>
     86e:	44b1                	li	s1,12
     870:	06b4e363          	bltu	s1,a1,8d6 <_malloc_r+0x84>
     874:	854a                	mv	a0,s2
     876:	1cb000ef          	jal	ra,1240 <__malloc_lock>
     87a:	82c18993          	addi	s3,gp,-2004 # 2000008c <__malloc_free_list>
     87e:	0009a783          	lw	a5,0(s3)
     882:	843e                	mv	s0,a5
     884:	e425                	bnez	s0,8ec <_malloc_r+0x9a>
     886:	85a6                	mv	a1,s1
     888:	854a                	mv	a0,s2
     88a:	3f95                	jal	7fe <sbrk_aligned>
     88c:	57fd                	li	a5,-1
     88e:	842a                	mv	s0,a0
     890:	0cf51663          	bne	a0,a5,95c <_malloc_r+0x10a>
     894:	0009a403          	lw	s0,0(s3)
     898:	87a2                	mv	a5,s0
     89a:	e7dd                	bnez	a5,948 <_malloc_r+0xf6>
     89c:	00042983          	lw	s3,0(s0)
     8a0:	4581                	li	a1,0
     8a2:	854a                	mv	a0,s2
     8a4:	99a2                	add	s3,s3,s0
     8a6:	2ee1                	jal	c7e <_sbrk_r>
     8a8:	0aa99363          	bne	s3,a0,94e <_malloc_r+0xfc>
     8ac:	401c                	lw	a5,0(s0)
     8ae:	048d                	addi	s1,s1,3
     8b0:	8c9d                	sub	s1,s1,a5
     8b2:	98f1                	andi	s1,s1,-4
     8b4:	04a1                	addi	s1,s1,8
     8b6:	47b1                	li	a5,12
     8b8:	00f4f363          	bgeu	s1,a5,8be <_malloc_r+0x6c>
     8bc:	44b1                	li	s1,12
     8be:	85a6                	mv	a1,s1
     8c0:	854a                	mv	a0,s2
     8c2:	3f35                	jal	7fe <sbrk_aligned>
     8c4:	57fd                	li	a5,-1
     8c6:	08f50463          	beq	a0,a5,94e <_malloc_r+0xfc>
     8ca:	401c                	lw	a5,0(s0)
     8cc:	97a6                	add	a5,a5,s1
     8ce:	c01c                	sw	a5,0(s0)
     8d0:	a83d                	j	90e <_malloc_r+0xbc>
     8d2:	f804dfe3          	bgez	s1,870 <_malloc_r+0x1e>
     8d6:	47b1                	li	a5,12
     8d8:	00f92023          	sw	a5,0(s2)
     8dc:	4501                	li	a0,0
     8de:	40f2                	lw	ra,28(sp)
     8e0:	4462                	lw	s0,24(sp)
     8e2:	44d2                	lw	s1,20(sp)
     8e4:	4942                	lw	s2,16(sp)
     8e6:	49b2                	lw	s3,12(sp)
     8e8:	6105                	addi	sp,sp,32
     8ea:	8082                	ret
     8ec:	4014                	lw	a3,0(s0)
     8ee:	8e85                	sub	a3,a3,s1
     8f0:	0406c963          	bltz	a3,942 <_malloc_r+0xf0>
     8f4:	472d                	li	a4,11
     8f6:	02d77e63          	bgeu	a4,a3,932 <_malloc_r+0xe0>
     8fa:	c004                	sw	s1,0(s0)
     8fc:	00940733          	add	a4,s0,s1
     900:	02879763          	bne	a5,s0,92e <_malloc_r+0xdc>
     904:	00e9a023          	sw	a4,0(s3)
     908:	405c                	lw	a5,4(s0)
     90a:	c314                	sw	a3,0(a4)
     90c:	c35c                	sw	a5,4(a4)
     90e:	854a                	mv	a0,s2
     910:	139000ef          	jal	ra,1248 <__malloc_unlock>
     914:	00b40513          	addi	a0,s0,11
     918:	00440793          	addi	a5,s0,4
     91c:	9961                	andi	a0,a0,-8
     91e:	40f50733          	sub	a4,a0,a5
     922:	faf50ee3          	beq	a0,a5,8de <_malloc_r+0x8c>
     926:	943a                	add	s0,s0,a4
     928:	8f89                	sub	a5,a5,a0
     92a:	c01c                	sw	a5,0(s0)
     92c:	bf4d                	j	8de <_malloc_r+0x8c>
     92e:	c3d8                	sw	a4,4(a5)
     930:	bfe1                	j	908 <_malloc_r+0xb6>
     932:	4058                	lw	a4,4(s0)
     934:	00879563          	bne	a5,s0,93e <_malloc_r+0xec>
     938:	00e9a023          	sw	a4,0(s3)
     93c:	bfc9                	j	90e <_malloc_r+0xbc>
     93e:	c3d8                	sw	a4,4(a5)
     940:	b7f9                	j	90e <_malloc_r+0xbc>
     942:	87a2                	mv	a5,s0
     944:	4040                	lw	s0,4(s0)
     946:	bf3d                	j	884 <_malloc_r+0x32>
     948:	843e                	mv	s0,a5
     94a:	43dc                	lw	a5,4(a5)
     94c:	b7b9                	j	89a <_malloc_r+0x48>
     94e:	47b1                	li	a5,12
     950:	00f92023          	sw	a5,0(s2)
     954:	854a                	mv	a0,s2
     956:	0f3000ef          	jal	ra,1248 <__malloc_unlock>
     95a:	b749                	j	8dc <_malloc_r+0x8a>
     95c:	c104                	sw	s1,0(a0)
     95e:	bf45                	j	90e <_malloc_r+0xbc>

00000960 <__sfputc_r>:
     960:	461c                	lw	a5,8(a2)
     962:	17fd                	addi	a5,a5,-1
     964:	c61c                	sw	a5,8(a2)
     966:	0007d963          	bgez	a5,978 <__sfputc_r+0x18>
     96a:	4e18                	lw	a4,24(a2)
     96c:	00e7c563          	blt	a5,a4,976 <__sfputc_r+0x16>
     970:	47a9                	li	a5,10
     972:	00f59363          	bne	a1,a5,978 <__sfputc_r+0x18>
     976:	aef1                	j	d52 <__swbuf_r>
     978:	421c                	lw	a5,0(a2)
     97a:	852e                	mv	a0,a1
     97c:	00178713          	addi	a4,a5,1
     980:	c218                	sw	a4,0(a2)
     982:	a38c                	.2byte	0xa38c
     984:	8082                	ret

00000986 <__sfputs_r>:
     986:	1101                	addi	sp,sp,-32
     988:	cc22                	sw	s0,24(sp)
     98a:	ca26                	sw	s1,20(sp)
     98c:	c84a                	sw	s2,16(sp)
     98e:	c64e                	sw	s3,12(sp)
     990:	c452                	sw	s4,8(sp)
     992:	ce06                	sw	ra,28(sp)
     994:	892a                	mv	s2,a0
     996:	89ae                	mv	s3,a1
     998:	8432                	mv	s0,a2
     99a:	00d604b3          	add	s1,a2,a3
     99e:	5a7d                	li	s4,-1
     9a0:	00941463          	bne	s0,s1,9a8 <__sfputs_r+0x22>
     9a4:	4501                	li	a0,0
     9a6:	a801                	j	9b6 <__sfputs_r+0x30>
     9a8:	200c                	.2byte	0x200c
     9aa:	864e                	mv	a2,s3
     9ac:	854a                	mv	a0,s2
     9ae:	3f4d                	jal	960 <__sfputc_r>
     9b0:	0405                	addi	s0,s0,1
     9b2:	ff4517e3          	bne	a0,s4,9a0 <__sfputs_r+0x1a>
     9b6:	40f2                	lw	ra,28(sp)
     9b8:	4462                	lw	s0,24(sp)
     9ba:	44d2                	lw	s1,20(sp)
     9bc:	4942                	lw	s2,16(sp)
     9be:	49b2                	lw	s3,12(sp)
     9c0:	4a22                	lw	s4,8(sp)
     9c2:	6105                	addi	sp,sp,32
     9c4:	8082                	ret

000009c6 <_vfiprintf_r>:
     9c6:	7135                	addi	sp,sp,-160
     9c8:	cd22                	sw	s0,152(sp)
     9ca:	cb26                	sw	s1,148(sp)
     9cc:	c94a                	sw	s2,144(sp)
     9ce:	c74e                	sw	s3,140(sp)
     9d0:	cf06                	sw	ra,156(sp)
     9d2:	c552                	sw	s4,136(sp)
     9d4:	c356                	sw	s5,132(sp)
     9d6:	c15a                	sw	s6,128(sp)
     9d8:	dede                	sw	s7,124(sp)
     9da:	dce2                	sw	s8,120(sp)
     9dc:	dae6                	sw	s9,116(sp)
     9de:	89aa                	mv	s3,a0
     9e0:	842e                	mv	s0,a1
     9e2:	8932                	mv	s2,a2
     9e4:	84b6                	mv	s1,a3
     9e6:	c501                	beqz	a0,9ee <_vfiprintf_r+0x28>
     9e8:	4d1c                	lw	a5,24(a0)
     9ea:	e391                	bnez	a5,9ee <_vfiprintf_r+0x28>
     9ec:	3961                	jal	684 <__sinit>
     9ee:	00001797          	auipc	a5,0x1
     9f2:	da278793          	addi	a5,a5,-606 # 1790 <__sf_fake_stdin>
     9f6:	04f41763          	bne	s0,a5,a44 <_vfiprintf_r+0x7e>
     9fa:	0049a403          	lw	s0,4(s3)
     9fe:	507c                	lw	a5,100(s0)
     a00:	8b85                	andi	a5,a5,1
     a02:	e799                	bnez	a5,a10 <_vfiprintf_r+0x4a>
     a04:	245e                	.2byte	0x245e
     a06:	2007f793          	andi	a5,a5,512
     a0a:	e399                	bnez	a5,a10 <_vfiprintf_r+0x4a>
     a0c:	4c28                	lw	a0,88(s0)
     a0e:	33f5                	jal	7fa <__retarget_lock_acquire_recursive>
     a10:	245e                	.2byte	0x245e
     a12:	8ba1                	andi	a5,a5,8
     a14:	c399                	beqz	a5,a1a <_vfiprintf_r+0x54>
     a16:	481c                	lw	a5,16(s0)
     a18:	efb9                	bnez	a5,a76 <_vfiprintf_r+0xb0>
     a1a:	85a2                	mv	a1,s0
     a1c:	854e                	mv	a0,s3
     a1e:	2939                	jal	e3c <__swsetup_r>
     a20:	c939                	beqz	a0,a76 <_vfiprintf_r+0xb0>
     a22:	507c                	lw	a5,100(s0)
     a24:	8b85                	andi	a5,a5,1
     a26:	c3a9                	beqz	a5,a68 <_vfiprintf_r+0xa2>
     a28:	557d                	li	a0,-1
     a2a:	40fa                	lw	ra,156(sp)
     a2c:	446a                	lw	s0,152(sp)
     a2e:	44da                	lw	s1,148(sp)
     a30:	494a                	lw	s2,144(sp)
     a32:	49ba                	lw	s3,140(sp)
     a34:	4a2a                	lw	s4,136(sp)
     a36:	4a9a                	lw	s5,132(sp)
     a38:	4b0a                	lw	s6,128(sp)
     a3a:	5bf6                	lw	s7,124(sp)
     a3c:	5c66                	lw	s8,120(sp)
     a3e:	5cd6                	lw	s9,116(sp)
     a40:	610d                	addi	sp,sp,160
     a42:	8082                	ret
     a44:	00001797          	auipc	a5,0x1
     a48:	d2c78793          	addi	a5,a5,-724 # 1770 <__sf_fake_stdout>
     a4c:	00f41563          	bne	s0,a5,a56 <_vfiprintf_r+0x90>
     a50:	0089a403          	lw	s0,8(s3)
     a54:	b76d                	j	9fe <_vfiprintf_r+0x38>
     a56:	00001797          	auipc	a5,0x1
     a5a:	cfa78793          	addi	a5,a5,-774 # 1750 <__sf_fake_stderr>
     a5e:	faf410e3          	bne	s0,a5,9fe <_vfiprintf_r+0x38>
     a62:	00c9a403          	lw	s0,12(s3)
     a66:	bf61                	j	9fe <_vfiprintf_r+0x38>
     a68:	245e                	.2byte	0x245e
     a6a:	2007f793          	andi	a5,a5,512
     a6e:	ffcd                	bnez	a5,a28 <_vfiprintf_r+0x62>
     a70:	4c28                	lw	a0,88(s0)
     a72:	3369                	jal	7fc <__retarget_lock_release_recursive>
     a74:	bf55                	j	a28 <_vfiprintf_r+0x62>
     a76:	02000793          	li	a5,32
     a7a:	02f104a3          	sb	a5,41(sp)
     a7e:	03000793          	li	a5,48
     a82:	d202                	sw	zero,36(sp)
     a84:	02f10523          	sb	a5,42(sp)
     a88:	c626                	sw	s1,12(sp)
     a8a:	02500b93          	li	s7,37
     a8e:	00001a97          	auipc	s5,0x1
     a92:	d22a8a93          	addi	s5,s5,-734 # 17b0 <__sf_fake_stdin+0x20>
     a96:	4c05                	li	s8,1
     a98:	4b29                	li	s6,10
     a9a:	84ca                	mv	s1,s2
     a9c:	209c                	.2byte	0x209c
     a9e:	c399                	beqz	a5,aa4 <_vfiprintf_r+0xde>
     aa0:	09779a63          	bne	a5,s7,b34 <_vfiprintf_r+0x16e>
     aa4:	41248cb3          	sub	s9,s1,s2
     aa8:	01248d63          	beq	s1,s2,ac2 <_vfiprintf_r+0xfc>
     aac:	86e6                	mv	a3,s9
     aae:	864a                	mv	a2,s2
     ab0:	85a2                	mv	a1,s0
     ab2:	854e                	mv	a0,s3
     ab4:	3dc9                	jal	986 <__sfputs_r>
     ab6:	57fd                	li	a5,-1
     ab8:	18f50863          	beq	a0,a5,c48 <_vfiprintf_r+0x282>
     abc:	5792                	lw	a5,36(sp)
     abe:	97e6                	add	a5,a5,s9
     ac0:	d23e                	sw	a5,36(sp)
     ac2:	209c                	.2byte	0x209c
     ac4:	18078263          	beqz	a5,c48 <_vfiprintf_r+0x282>
     ac8:	57fd                	li	a5,-1
     aca:	00148913          	addi	s2,s1,1
     ace:	c802                	sw	zero,16(sp)
     ad0:	ce02                	sw	zero,28(sp)
     ad2:	ca3e                	sw	a5,20(sp)
     ad4:	cc02                	sw	zero,24(sp)
     ad6:	040109a3          	sb	zero,83(sp)
     ada:	d482                	sw	zero,104(sp)
     adc:	00094583          	lbu	a1,0(s2)
     ae0:	4615                	li	a2,5
     ae2:	8556                	mv	a0,s5
     ae4:	744000ef          	jal	ra,1228 <memchr>
     ae8:	47c2                	lw	a5,16(sp)
     aea:	00190493          	addi	s1,s2,1
     aee:	e529                	bnez	a0,b38 <_vfiprintf_r+0x172>
     af0:	0107f713          	andi	a4,a5,16
     af4:	c709                	beqz	a4,afe <_vfiprintf_r+0x138>
     af6:	02000713          	li	a4,32
     afa:	04e109a3          	sb	a4,83(sp)
     afe:	0087f713          	andi	a4,a5,8
     b02:	c709                	beqz	a4,b0c <_vfiprintf_r+0x146>
     b04:	02b00713          	li	a4,43
     b08:	04e109a3          	sb	a4,83(sp)
     b0c:	00094683          	lbu	a3,0(s2)
     b10:	02a00713          	li	a4,42
     b14:	02e68a63          	beq	a3,a4,b48 <_vfiprintf_r+0x182>
     b18:	47f2                	lw	a5,28(sp)
     b1a:	84ca                	mv	s1,s2
     b1c:	4681                	li	a3,0
     b1e:	4625                	li	a2,9
     b20:	2098                	.2byte	0x2098
     b22:	00148593          	addi	a1,s1,1
     b26:	fd070713          	addi	a4,a4,-48 # 1ffd0 <_data_lma+0x1e78c>
     b2a:	06e67363          	bgeu	a2,a4,b90 <_vfiprintf_r+0x1ca>
     b2e:	c68d                	beqz	a3,b58 <_vfiprintf_r+0x192>
     b30:	ce3e                	sw	a5,28(sp)
     b32:	a01d                	j	b58 <_vfiprintf_r+0x192>
     b34:	0485                	addi	s1,s1,1
     b36:	b79d                	j	a9c <_vfiprintf_r+0xd6>
     b38:	41550533          	sub	a0,a0,s5
     b3c:	00ac1533          	sll	a0,s8,a0
     b40:	8fc9                	or	a5,a5,a0
     b42:	c83e                	sw	a5,16(sp)
     b44:	8926                	mv	s2,s1
     b46:	bf59                	j	adc <_vfiprintf_r+0x116>
     b48:	4732                	lw	a4,12(sp)
     b4a:	00470693          	addi	a3,a4,4
     b4e:	4318                	lw	a4,0(a4)
     b50:	c636                	sw	a3,12(sp)
     b52:	02074863          	bltz	a4,b82 <_vfiprintf_r+0x1bc>
     b56:	ce3a                	sw	a4,28(sp)
     b58:	2098                	.2byte	0x2098
     b5a:	02e00793          	li	a5,46
     b5e:	04f71c63          	bne	a4,a5,bb6 <_vfiprintf_r+0x1f0>
     b62:	3098                	.2byte	0x3098
     b64:	02a00793          	li	a5,42
     b68:	02f71a63          	bne	a4,a5,b9c <_vfiprintf_r+0x1d6>
     b6c:	47b2                	lw	a5,12(sp)
     b6e:	0489                	addi	s1,s1,2
     b70:	00478713          	addi	a4,a5,4
     b74:	439c                	lw	a5,0(a5)
     b76:	c63a                	sw	a4,12(sp)
     b78:	0007d363          	bgez	a5,b7e <_vfiprintf_r+0x1b8>
     b7c:	57fd                	li	a5,-1
     b7e:	ca3e                	sw	a5,20(sp)
     b80:	a81d                	j	bb6 <_vfiprintf_r+0x1f0>
     b82:	40e00733          	neg	a4,a4
     b86:	0027e793          	ori	a5,a5,2
     b8a:	ce3a                	sw	a4,28(sp)
     b8c:	c83e                	sw	a5,16(sp)
     b8e:	b7e9                	j	b58 <_vfiprintf_r+0x192>
     b90:	036787b3          	mul	a5,a5,s6
     b94:	84ae                	mv	s1,a1
     b96:	4685                	li	a3,1
     b98:	97ba                	add	a5,a5,a4
     b9a:	b759                	j	b20 <_vfiprintf_r+0x15a>
     b9c:	0485                	addi	s1,s1,1
     b9e:	ca02                	sw	zero,20(sp)
     ba0:	4681                	li	a3,0
     ba2:	4781                	li	a5,0
     ba4:	4625                	li	a2,9
     ba6:	2098                	.2byte	0x2098
     ba8:	00148593          	addi	a1,s1,1
     bac:	fd070713          	addi	a4,a4,-48
     bb0:	06e67263          	bgeu	a2,a4,c14 <_vfiprintf_r+0x24e>
     bb4:	f6e9                	bnez	a3,b7e <_vfiprintf_r+0x1b8>
     bb6:	208c                	.2byte	0x208c
     bb8:	460d                	li	a2,3
     bba:	00001517          	auipc	a0,0x1
     bbe:	bfe50513          	addi	a0,a0,-1026 # 17b8 <__sf_fake_stdin+0x28>
     bc2:	259d                	jal	1228 <memchr>
     bc4:	cd11                	beqz	a0,be0 <_vfiprintf_r+0x21a>
     bc6:	00001797          	auipc	a5,0x1
     bca:	bf278793          	addi	a5,a5,-1038 # 17b8 <__sf_fake_stdin+0x28>
     bce:	8d1d                	sub	a0,a0,a5
     bd0:	47c2                	lw	a5,16(sp)
     bd2:	04000713          	li	a4,64
     bd6:	00a71733          	sll	a4,a4,a0
     bda:	8fd9                	or	a5,a5,a4
     bdc:	0485                	addi	s1,s1,1
     bde:	c83e                	sw	a5,16(sp)
     be0:	208c                	.2byte	0x208c
     be2:	4619                	li	a2,6
     be4:	00001517          	auipc	a0,0x1
     be8:	bd850513          	addi	a0,a0,-1064 # 17bc <__sf_fake_stdin+0x2c>
     bec:	00148913          	addi	s2,s1,1
     bf0:	02b10423          	sb	a1,40(sp)
     bf4:	2d15                	jal	1228 <memchr>
     bf6:	c92d                	beqz	a0,c68 <_vfiprintf_r+0x2a2>
     bf8:	00000793          	li	a5,0
     bfc:	e795                	bnez	a5,c28 <_vfiprintf_r+0x262>
     bfe:	4742                	lw	a4,16(sp)
     c00:	47b2                	lw	a5,12(sp)
     c02:	10077713          	andi	a4,a4,256
     c06:	cf09                	beqz	a4,c20 <_vfiprintf_r+0x25a>
     c08:	0791                	addi	a5,a5,4
     c0a:	c63e                	sw	a5,12(sp)
     c0c:	5792                	lw	a5,36(sp)
     c0e:	97d2                	add	a5,a5,s4
     c10:	d23e                	sw	a5,36(sp)
     c12:	b561                	j	a9a <_vfiprintf_r+0xd4>
     c14:	036787b3          	mul	a5,a5,s6
     c18:	84ae                	mv	s1,a1
     c1a:	4685                	li	a3,1
     c1c:	97ba                	add	a5,a5,a4
     c1e:	b761                	j	ba6 <_vfiprintf_r+0x1e0>
     c20:	079d                	addi	a5,a5,7
     c22:	9be1                	andi	a5,a5,-8
     c24:	07a1                	addi	a5,a5,8
     c26:	b7d5                	j	c0a <_vfiprintf_r+0x244>
     c28:	0078                	addi	a4,sp,12
     c2a:	00000697          	auipc	a3,0x0
     c2e:	d5c68693          	addi	a3,a3,-676 # 986 <__sfputs_r>
     c32:	8622                	mv	a2,s0
     c34:	080c                	addi	a1,sp,16
     c36:	854e                	mv	a0,s3
     c38:	00000097          	auipc	ra,0x0
     c3c:	000000e7          	jalr	zero # 0 <_sinit>
     c40:	57fd                	li	a5,-1
     c42:	8a2a                	mv	s4,a0
     c44:	fcf514e3          	bne	a0,a5,c0c <_vfiprintf_r+0x246>
     c48:	507c                	lw	a5,100(s0)
     c4a:	8b85                	andi	a5,a5,1
     c4c:	e799                	bnez	a5,c5a <_vfiprintf_r+0x294>
     c4e:	245e                	.2byte	0x245e
     c50:	2007f793          	andi	a5,a5,512
     c54:	e399                	bnez	a5,c5a <_vfiprintf_r+0x294>
     c56:	4c28                	lw	a0,88(s0)
     c58:	3655                	jal	7fc <__retarget_lock_release_recursive>
     c5a:	245e                	.2byte	0x245e
     c5c:	0407f793          	andi	a5,a5,64
     c60:	dc0794e3          	bnez	a5,a28 <_vfiprintf_r+0x62>
     c64:	5512                	lw	a0,36(sp)
     c66:	b3d1                	j	a2a <_vfiprintf_r+0x64>
     c68:	0078                	addi	a4,sp,12
     c6a:	00000697          	auipc	a3,0x0
     c6e:	d1c68693          	addi	a3,a3,-740 # 986 <__sfputs_r>
     c72:	8622                	mv	a2,s0
     c74:	080c                	addi	a1,sp,16
     c76:	854e                	mv	a0,s3
     c78:	786000ef          	jal	ra,13fe <_printf_i>
     c7c:	b7d1                	j	c40 <_vfiprintf_r+0x27a>

00000c7e <_sbrk_r>:
     c7e:	1141                	addi	sp,sp,-16
     c80:	c422                	sw	s0,8(sp)
     c82:	842a                	mv	s0,a0
     c84:	852e                	mv	a0,a1
     c86:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
     c8a:	c606                	sw	ra,12(sp)
     c8c:	dc8ff0ef          	jal	ra,254 <_sbrk>
     c90:	57fd                	li	a5,-1
     c92:	00f51663          	bne	a0,a5,c9e <_sbrk_r+0x20>
     c96:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
     c9a:	c391                	beqz	a5,c9e <_sbrk_r+0x20>
     c9c:	c01c                	sw	a5,0(s0)
     c9e:	40b2                	lw	ra,12(sp)
     ca0:	4422                	lw	s0,8(sp)
     ca2:	0141                	addi	sp,sp,16
     ca4:	8082                	ret

00000ca6 <__sread>:
     ca6:	1141                	addi	sp,sp,-16
     ca8:	c422                	sw	s0,8(sp)
     caa:	842e                	mv	s0,a1
     cac:	00e59583          	lh	a1,14(a1)
     cb0:	c606                	sw	ra,12(sp)
     cb2:	1c5000ef          	jal	ra,1676 <_read_r>
     cb6:	00054963          	bltz	a0,cc8 <__sread+0x22>
     cba:	487c                	lw	a5,84(s0)
     cbc:	97aa                	add	a5,a5,a0
     cbe:	c87c                	sw	a5,84(s0)
     cc0:	40b2                	lw	ra,12(sp)
     cc2:	4422                	lw	s0,8(sp)
     cc4:	0141                	addi	sp,sp,16
     cc6:	8082                	ret
     cc8:	245e                	.2byte	0x245e
     cca:	777d                	lui	a4,0xfffff
     ccc:	177d                	addi	a4,a4,-1 # ffffefff <_eusrstack+0xdfff9fff>
     cce:	8ff9                	and	a5,a5,a4
     cd0:	a45e                	.2byte	0xa45e
     cd2:	b7fd                	j	cc0 <__sread+0x1a>

00000cd4 <__swrite>:
     cd4:	25de                	.2byte	0x25de
     cd6:	1101                	addi	sp,sp,-32
     cd8:	cc22                	sw	s0,24(sp)
     cda:	ca26                	sw	s1,20(sp)
     cdc:	c84a                	sw	s2,16(sp)
     cde:	c64e                	sw	s3,12(sp)
     ce0:	ce06                	sw	ra,28(sp)
     ce2:	1007f793          	andi	a5,a5,256
     ce6:	84aa                	mv	s1,a0
     ce8:	842e                	mv	s0,a1
     cea:	8932                	mv	s2,a2
     cec:	89b6                	mv	s3,a3
     cee:	c791                	beqz	a5,cfa <__swrite+0x26>
     cf0:	00e59583          	lh	a1,14(a1)
     cf4:	4689                	li	a3,2
     cf6:	4601                	li	a2,0
     cf8:	2929                	jal	1112 <_lseek_r>
     cfa:	245e                	.2byte	0x245e
     cfc:	777d                	lui	a4,0xfffff
     cfe:	177d                	addi	a4,a4,-1 # ffffefff <_eusrstack+0xdfff9fff>
     d00:	8ff9                	and	a5,a5,a4
     d02:	00e41583          	lh	a1,14(s0)
     d06:	a45e                	.2byte	0xa45e
     d08:	4462                	lw	s0,24(sp)
     d0a:	40f2                	lw	ra,28(sp)
     d0c:	86ce                	mv	a3,s3
     d0e:	864a                	mv	a2,s2
     d10:	49b2                	lw	s3,12(sp)
     d12:	4942                	lw	s2,16(sp)
     d14:	8526                	mv	a0,s1
     d16:	44d2                	lw	s1,20(sp)
     d18:	6105                	addi	sp,sp,32
     d1a:	a8dd                	j	e10 <_write_r>

00000d1c <__sseek>:
     d1c:	1141                	addi	sp,sp,-16
     d1e:	c422                	sw	s0,8(sp)
     d20:	842e                	mv	s0,a1
     d22:	00e59583          	lh	a1,14(a1)
     d26:	c606                	sw	ra,12(sp)
     d28:	26ed                	jal	1112 <_lseek_r>
     d2a:	577d                	li	a4,-1
     d2c:	245e                	.2byte	0x245e
     d2e:	00e51a63          	bne	a0,a4,d42 <__sseek+0x26>
     d32:	777d                	lui	a4,0xfffff
     d34:	177d                	addi	a4,a4,-1 # ffffefff <_eusrstack+0xdfff9fff>
     d36:	8ff9                	and	a5,a5,a4
     d38:	a45e                	.2byte	0xa45e
     d3a:	40b2                	lw	ra,12(sp)
     d3c:	4422                	lw	s0,8(sp)
     d3e:	0141                	addi	sp,sp,16
     d40:	8082                	ret
     d42:	6705                	lui	a4,0x1
     d44:	8fd9                	or	a5,a5,a4
     d46:	a45e                	.2byte	0xa45e
     d48:	c868                	sw	a0,84(s0)
     d4a:	bfc5                	j	d3a <__sseek+0x1e>

00000d4c <__sclose>:
     d4c:	00e59583          	lh	a1,14(a1)
     d50:	aaf1                	j	f2c <_close_r>

00000d52 <__swbuf_r>:
     d52:	1101                	addi	sp,sp,-32
     d54:	cc22                	sw	s0,24(sp)
     d56:	ca26                	sw	s1,20(sp)
     d58:	c84a                	sw	s2,16(sp)
     d5a:	ce06                	sw	ra,28(sp)
     d5c:	c64e                	sw	s3,12(sp)
     d5e:	84aa                	mv	s1,a0
     d60:	892e                	mv	s2,a1
     d62:	8432                	mv	s0,a2
     d64:	c509                	beqz	a0,d6e <__swbuf_r+0x1c>
     d66:	4d1c                	lw	a5,24(a0)
     d68:	e399                	bnez	a5,d6e <__swbuf_r+0x1c>
     d6a:	91bff0ef          	jal	ra,684 <__sinit>
     d6e:	00001797          	auipc	a5,0x1
     d72:	a2278793          	addi	a5,a5,-1502 # 1790 <__sf_fake_stdin>
     d76:	02f41763          	bne	s0,a5,da4 <__swbuf_r+0x52>
     d7a:	40c0                	lw	s0,4(s1)
     d7c:	4c1c                	lw	a5,24(s0)
     d7e:	c41c                	sw	a5,8(s0)
     d80:	245e                	.2byte	0x245e
     d82:	8ba1                	andi	a5,a5,8
     d84:	c399                	beqz	a5,d8a <__swbuf_r+0x38>
     d86:	481c                	lw	a5,16(s0)
     d88:	ef95                	bnez	a5,dc4 <__swbuf_r+0x72>
     d8a:	85a2                	mv	a1,s0
     d8c:	8526                	mv	a0,s1
     d8e:	207d                	jal	e3c <__swsetup_r>
     d90:	c915                	beqz	a0,dc4 <__swbuf_r+0x72>
     d92:	597d                	li	s2,-1
     d94:	40f2                	lw	ra,28(sp)
     d96:	4462                	lw	s0,24(sp)
     d98:	44d2                	lw	s1,20(sp)
     d9a:	49b2                	lw	s3,12(sp)
     d9c:	854a                	mv	a0,s2
     d9e:	4942                	lw	s2,16(sp)
     da0:	6105                	addi	sp,sp,32
     da2:	8082                	ret
     da4:	00001797          	auipc	a5,0x1
     da8:	9cc78793          	addi	a5,a5,-1588 # 1770 <__sf_fake_stdout>
     dac:	00f41463          	bne	s0,a5,db4 <__swbuf_r+0x62>
     db0:	4480                	lw	s0,8(s1)
     db2:	b7e9                	j	d7c <__swbuf_r+0x2a>
     db4:	00001797          	auipc	a5,0x1
     db8:	99c78793          	addi	a5,a5,-1636 # 1750 <__sf_fake_stderr>
     dbc:	fcf410e3          	bne	s0,a5,d7c <__swbuf_r+0x2a>
     dc0:	44c0                	lw	s0,12(s1)
     dc2:	bf6d                	j	d7c <__swbuf_r+0x2a>
     dc4:	481c                	lw	a5,16(s0)
     dc6:	4008                	lw	a0,0(s0)
     dc8:	0ff97993          	zext.b	s3,s2
     dcc:	0ff97913          	zext.b	s2,s2
     dd0:	8d1d                	sub	a0,a0,a5
     dd2:	485c                	lw	a5,20(s0)
     dd4:	00f54663          	blt	a0,a5,de0 <__swbuf_r+0x8e>
     dd8:	85a2                	mv	a1,s0
     dda:	8526                	mv	a0,s1
     ddc:	246d                	jal	1086 <_fflush_r>
     dde:	f955                	bnez	a0,d92 <__swbuf_r+0x40>
     de0:	441c                	lw	a5,8(s0)
     de2:	0505                	addi	a0,a0,1
     de4:	17fd                	addi	a5,a5,-1
     de6:	c41c                	sw	a5,8(s0)
     de8:	401c                	lw	a5,0(s0)
     dea:	00178713          	addi	a4,a5,1
     dee:	c018                	sw	a4,0(s0)
     df0:	01378023          	sb	s3,0(a5)
     df4:	485c                	lw	a5,20(s0)
     df6:	00a78863          	beq	a5,a0,e06 <__swbuf_r+0xb4>
     dfa:	245e                	.2byte	0x245e
     dfc:	8b85                	andi	a5,a5,1
     dfe:	dbd9                	beqz	a5,d94 <__swbuf_r+0x42>
     e00:	47a9                	li	a5,10
     e02:	f8f919e3          	bne	s2,a5,d94 <__swbuf_r+0x42>
     e06:	85a2                	mv	a1,s0
     e08:	8526                	mv	a0,s1
     e0a:	2cb5                	jal	1086 <_fflush_r>
     e0c:	d541                	beqz	a0,d94 <__swbuf_r+0x42>
     e0e:	b751                	j	d92 <__swbuf_r+0x40>

00000e10 <_write_r>:
     e10:	1141                	addi	sp,sp,-16
     e12:	c422                	sw	s0,8(sp)
     e14:	842a                	mv	s0,a0
     e16:	852e                	mv	a0,a1
     e18:	85b2                	mv	a1,a2
     e1a:	8636                	mv	a2,a3
     e1c:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
     e20:	c606                	sw	ra,12(sp)
     e22:	bc2ff0ef          	jal	ra,1e4 <_write>
     e26:	57fd                	li	a5,-1
     e28:	00f51663          	bne	a0,a5,e34 <_write_r+0x24>
     e2c:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
     e30:	c391                	beqz	a5,e34 <_write_r+0x24>
     e32:	c01c                	sw	a5,0(s0)
     e34:	40b2                	lw	ra,12(sp)
     e36:	4422                	lw	s0,8(sp)
     e38:	0141                	addi	sp,sp,16
     e3a:	8082                	ret

00000e3c <__swsetup_r>:
     e3c:	1141                	addi	sp,sp,-16
     e3e:	c422                	sw	s0,8(sp)
     e40:	c226                	sw	s1,4(sp)
     e42:	c04a                	sw	s2,0(sp)
     e44:	c606                	sw	ra,12(sp)
     e46:	8081a483          	lw	s1,-2040(gp) # 20000068 <_impure_ptr>
     e4a:	892a                	mv	s2,a0
     e4c:	842e                	mv	s0,a1
     e4e:	c491                	beqz	s1,e5a <__swsetup_r+0x1e>
     e50:	4c9c                	lw	a5,24(s1)
     e52:	e781                	bnez	a5,e5a <__swsetup_r+0x1e>
     e54:	8526                	mv	a0,s1
     e56:	82fff0ef          	jal	ra,684 <__sinit>
     e5a:	00001797          	auipc	a5,0x1
     e5e:	93678793          	addi	a5,a5,-1738 # 1790 <__sf_fake_stdin>
     e62:	02f41363          	bne	s0,a5,e88 <__swsetup_r+0x4c>
     e66:	40c0                	lw	s0,4(s1)
     e68:	00c41783          	lh	a5,12(s0)
     e6c:	0087f713          	andi	a4,a5,8
     e70:	e725                	bnez	a4,ed8 <__swsetup_r+0x9c>
     e72:	0107f713          	andi	a4,a5,16
     e76:	eb0d                	bnez	a4,ea8 <__swsetup_r+0x6c>
     e78:	4725                	li	a4,9
     e7a:	00e92023          	sw	a4,0(s2)
     e7e:	0407e793          	ori	a5,a5,64
     e82:	a45e                	.2byte	0xa45e
     e84:	557d                	li	a0,-1
     e86:	a071                	j	f12 <__swsetup_r+0xd6>
     e88:	00001797          	auipc	a5,0x1
     e8c:	8e878793          	addi	a5,a5,-1816 # 1770 <__sf_fake_stdout>
     e90:	00f41463          	bne	s0,a5,e98 <__swsetup_r+0x5c>
     e94:	4480                	lw	s0,8(s1)
     e96:	bfc9                	j	e68 <__swsetup_r+0x2c>
     e98:	00001797          	auipc	a5,0x1
     e9c:	8b878793          	addi	a5,a5,-1864 # 1750 <__sf_fake_stderr>
     ea0:	fcf414e3          	bne	s0,a5,e68 <__swsetup_r+0x2c>
     ea4:	44c0                	lw	s0,12(s1)
     ea6:	b7c9                	j	e68 <__swsetup_r+0x2c>
     ea8:	8b91                	andi	a5,a5,4
     eaa:	c39d                	beqz	a5,ed0 <__swsetup_r+0x94>
     eac:	584c                	lw	a1,52(s0)
     eae:	c989                	beqz	a1,ec0 <__swsetup_r+0x84>
     eb0:	04440793          	addi	a5,s0,68
     eb4:	00f58463          	beq	a1,a5,ebc <__swsetup_r+0x80>
     eb8:	854a                	mv	a0,s2
     eba:	2e59                	jal	1250 <_free_r>
     ebc:	02042a23          	sw	zero,52(s0)
     ec0:	245e                	.2byte	0x245e
     ec2:	00042223          	sw	zero,4(s0)
     ec6:	fdb7f793          	andi	a5,a5,-37
     eca:	a45e                	.2byte	0xa45e
     ecc:	481c                	lw	a5,16(s0)
     ece:	c01c                	sw	a5,0(s0)
     ed0:	245e                	.2byte	0x245e
     ed2:	0087e793          	ori	a5,a5,8
     ed6:	a45e                	.2byte	0xa45e
     ed8:	481c                	lw	a5,16(s0)
     eda:	eb99                	bnez	a5,ef0 <__swsetup_r+0xb4>
     edc:	245e                	.2byte	0x245e
     ede:	20000713          	li	a4,512
     ee2:	2807f793          	andi	a5,a5,640
     ee6:	00e78563          	beq	a5,a4,ef0 <__swsetup_r+0xb4>
     eea:	85a2                	mv	a1,s0
     eec:	854a                	mv	a0,s2
     eee:	245d                	jal	1194 <__smakebuf_r>
     ef0:	00c41783          	lh	a5,12(s0)
     ef4:	0017f713          	andi	a4,a5,1
     ef8:	c31d                	beqz	a4,f1e <__swsetup_r+0xe2>
     efa:	4858                	lw	a4,20(s0)
     efc:	00042423          	sw	zero,8(s0)
     f00:	40e00733          	neg	a4,a4
     f04:	cc18                	sw	a4,24(s0)
     f06:	4818                	lw	a4,16(s0)
     f08:	4501                	li	a0,0
     f0a:	e701                	bnez	a4,f12 <__swsetup_r+0xd6>
     f0c:	0807f713          	andi	a4,a5,128
     f10:	f73d                	bnez	a4,e7e <__swsetup_r+0x42>
     f12:	40b2                	lw	ra,12(sp)
     f14:	4422                	lw	s0,8(sp)
     f16:	4492                	lw	s1,4(sp)
     f18:	4902                	lw	s2,0(sp)
     f1a:	0141                	addi	sp,sp,16
     f1c:	8082                	ret
     f1e:	0027f713          	andi	a4,a5,2
     f22:	4681                	li	a3,0
     f24:	e311                	bnez	a4,f28 <__swsetup_r+0xec>
     f26:	4854                	lw	a3,20(s0)
     f28:	c414                	sw	a3,8(s0)
     f2a:	bff1                	j	f06 <__swsetup_r+0xca>

00000f2c <_close_r>:
     f2c:	1141                	addi	sp,sp,-16
     f2e:	c422                	sw	s0,8(sp)
     f30:	842a                	mv	s0,a0
     f32:	852e                	mv	a0,a1
     f34:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
     f38:	c606                	sw	ra,12(sp)
     f3a:	7b4000ef          	jal	ra,16ee <_close>
     f3e:	57fd                	li	a5,-1
     f40:	00f51663          	bne	a0,a5,f4c <_close_r+0x20>
     f44:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
     f48:	c391                	beqz	a5,f4c <_close_r+0x20>
     f4a:	c01c                	sw	a5,0(s0)
     f4c:	40b2                	lw	ra,12(sp)
     f4e:	4422                	lw	s0,8(sp)
     f50:	0141                	addi	sp,sp,16
     f52:	8082                	ret

00000f54 <__sflush_r>:
     f54:	00c59783          	lh	a5,12(a1)
     f58:	1101                	addi	sp,sp,-32
     f5a:	cc22                	sw	s0,24(sp)
     f5c:	ca26                	sw	s1,20(sp)
     f5e:	ce06                	sw	ra,28(sp)
     f60:	c84a                	sw	s2,16(sp)
     f62:	c64e                	sw	s3,12(sp)
     f64:	0087f713          	andi	a4,a5,8
     f68:	84aa                	mv	s1,a0
     f6a:	842e                	mv	s0,a1
     f6c:	e379                	bnez	a4,1032 <__sflush_r+0xde>
     f6e:	41d8                	lw	a4,4(a1)
     f70:	00e04563          	bgtz	a4,f7a <__sflush_r+0x26>
     f74:	41b8                	lw	a4,64(a1)
     f76:	08e05663          	blez	a4,1002 <__sflush_r+0xae>
     f7a:	5458                	lw	a4,44(s0)
     f7c:	c359                	beqz	a4,1002 <__sflush_r+0xae>
     f7e:	83b1                	srli	a5,a5,0xc
     f80:	0004a903          	lw	s2,0(s1)
     f84:	8b85                	andi	a5,a5,1
     f86:	0004a023          	sw	zero,0(s1)
     f8a:	500c                	lw	a1,32(s0)
     f8c:	cba9                	beqz	a5,fde <__sflush_r+0x8a>
     f8e:	4870                	lw	a2,84(s0)
     f90:	245e                	.2byte	0x245e
     f92:	8b91                	andi	a5,a5,4
     f94:	c799                	beqz	a5,fa2 <__sflush_r+0x4e>
     f96:	405c                	lw	a5,4(s0)
     f98:	8e1d                	sub	a2,a2,a5
     f9a:	585c                	lw	a5,52(s0)
     f9c:	c399                	beqz	a5,fa2 <__sflush_r+0x4e>
     f9e:	403c                	lw	a5,64(s0)
     fa0:	8e1d                	sub	a2,a2,a5
     fa2:	545c                	lw	a5,44(s0)
     fa4:	500c                	lw	a1,32(s0)
     fa6:	4681                	li	a3,0
     fa8:	8526                	mv	a0,s1
     faa:	9782                	jalr	a5
     fac:	57fd                	li	a5,-1
     fae:	04f50c63          	beq	a0,a5,1006 <__sflush_r+0xb2>
     fb2:	481c                	lw	a5,16(s0)
     fb4:	6705                	lui	a4,0x1
     fb6:	00042223          	sw	zero,4(s0)
     fba:	c01c                	sw	a5,0(s0)
     fbc:	245e                	.2byte	0x245e
     fbe:	8ff9                	and	a5,a5,a4
     fc0:	c391                	beqz	a5,fc4 <__sflush_r+0x70>
     fc2:	c868                	sw	a0,84(s0)
     fc4:	584c                	lw	a1,52(s0)
     fc6:	0124a023          	sw	s2,0(s1)
     fca:	cd85                	beqz	a1,1002 <__sflush_r+0xae>
     fcc:	04440793          	addi	a5,s0,68
     fd0:	00f58463          	beq	a1,a5,fd8 <__sflush_r+0x84>
     fd4:	8526                	mv	a0,s1
     fd6:	2cad                	jal	1250 <_free_r>
     fd8:	02042a23          	sw	zero,52(s0)
     fdc:	a01d                	j	1002 <__sflush_r+0xae>
     fde:	4601                	li	a2,0
     fe0:	4685                	li	a3,1
     fe2:	8526                	mv	a0,s1
     fe4:	9702                	jalr	a4
     fe6:	57fd                	li	a5,-1
     fe8:	862a                	mv	a2,a0
     fea:	faf513e3          	bne	a0,a5,f90 <__sflush_r+0x3c>
     fee:	409c                	lw	a5,0(s1)
     ff0:	d3c5                	beqz	a5,f90 <__sflush_r+0x3c>
     ff2:	4775                	li	a4,29
     ff4:	00e78563          	beq	a5,a4,ffe <__sflush_r+0xaa>
     ff8:	4759                	li	a4,22
     ffa:	06e79563          	bne	a5,a4,1064 <__sflush_r+0x110>
     ffe:	0124a023          	sw	s2,0(s1)
    1002:	4501                	li	a0,0
    1004:	a0b5                	j	1070 <__sflush_r+0x11c>
    1006:	4098                	lw	a4,0(s1)
    1008:	00c41783          	lh	a5,12(s0)
    100c:	cf01                	beqz	a4,1024 <__sflush_r+0xd0>
    100e:	46f5                	li	a3,29
    1010:	00d70563          	beq	a4,a3,101a <__sflush_r+0xc6>
    1014:	46d9                	li	a3,22
    1016:	04d71963          	bne	a4,a3,1068 <__sflush_r+0x114>
    101a:	481c                	lw	a5,16(s0)
    101c:	00042223          	sw	zero,4(s0)
    1020:	c01c                	sw	a5,0(s0)
    1022:	b74d                	j	fc4 <__sflush_r+0x70>
    1024:	4818                	lw	a4,16(s0)
    1026:	83b1                	srli	a5,a5,0xc
    1028:	00042223          	sw	zero,4(s0)
    102c:	c018                	sw	a4,0(s0)
    102e:	8b85                	andi	a5,a5,1
    1030:	bf41                	j	fc0 <__sflush_r+0x6c>
    1032:	0105a983          	lw	s3,16(a1)
    1036:	fc0986e3          	beqz	s3,1002 <__sflush_r+0xae>
    103a:	0005a903          	lw	s2,0(a1)
    103e:	8b8d                	andi	a5,a5,3
    1040:	0135a023          	sw	s3,0(a1)
    1044:	41390933          	sub	s2,s2,s3
    1048:	4701                	li	a4,0
    104a:	e391                	bnez	a5,104e <__sflush_r+0xfa>
    104c:	49d8                	lw	a4,20(a1)
    104e:	c418                	sw	a4,8(s0)
    1050:	fb2059e3          	blez	s2,1002 <__sflush_r+0xae>
    1054:	541c                	lw	a5,40(s0)
    1056:	500c                	lw	a1,32(s0)
    1058:	86ca                	mv	a3,s2
    105a:	864e                	mv	a2,s3
    105c:	8526                	mv	a0,s1
    105e:	9782                	jalr	a5
    1060:	00a04f63          	bgtz	a0,107e <__sflush_r+0x12a>
    1064:	00c41783          	lh	a5,12(s0)
    1068:	0407e793          	ori	a5,a5,64
    106c:	a45e                	.2byte	0xa45e
    106e:	557d                	li	a0,-1
    1070:	40f2                	lw	ra,28(sp)
    1072:	4462                	lw	s0,24(sp)
    1074:	44d2                	lw	s1,20(sp)
    1076:	4942                	lw	s2,16(sp)
    1078:	49b2                	lw	s3,12(sp)
    107a:	6105                	addi	sp,sp,32
    107c:	8082                	ret
    107e:	99aa                	add	s3,s3,a0
    1080:	40a90933          	sub	s2,s2,a0
    1084:	b7f1                	j	1050 <__sflush_r+0xfc>

00001086 <_fflush_r>:
    1086:	499c                	lw	a5,16(a1)
    1088:	1141                	addi	sp,sp,-16
    108a:	c606                	sw	ra,12(sp)
    108c:	c422                	sw	s0,8(sp)
    108e:	c226                	sw	s1,4(sp)
    1090:	eb81                	bnez	a5,10a0 <_fflush_r+0x1a>
    1092:	4481                	li	s1,0
    1094:	40b2                	lw	ra,12(sp)
    1096:	4422                	lw	s0,8(sp)
    1098:	8526                	mv	a0,s1
    109a:	4492                	lw	s1,4(sp)
    109c:	0141                	addi	sp,sp,16
    109e:	8082                	ret
    10a0:	84aa                	mv	s1,a0
    10a2:	842e                	mv	s0,a1
    10a4:	c509                	beqz	a0,10ae <_fflush_r+0x28>
    10a6:	4d1c                	lw	a5,24(a0)
    10a8:	e399                	bnez	a5,10ae <_fflush_r+0x28>
    10aa:	ddaff0ef          	jal	ra,684 <__sinit>
    10ae:	00000797          	auipc	a5,0x0
    10b2:	6e278793          	addi	a5,a5,1762 # 1790 <__sf_fake_stdin>
    10b6:	02f41e63          	bne	s0,a5,10f2 <_fflush_r+0x6c>
    10ba:	40c0                	lw	s0,4(s1)
    10bc:	00c41783          	lh	a5,12(s0)
    10c0:	dbe9                	beqz	a5,1092 <_fflush_r+0xc>
    10c2:	5078                	lw	a4,100(s0)
    10c4:	8b05                	andi	a4,a4,1
    10c6:	e719                	bnez	a4,10d4 <_fflush_r+0x4e>
    10c8:	2007f793          	andi	a5,a5,512
    10cc:	e781                	bnez	a5,10d4 <_fflush_r+0x4e>
    10ce:	4c28                	lw	a0,88(s0)
    10d0:	f2aff0ef          	jal	ra,7fa <__retarget_lock_acquire_recursive>
    10d4:	8526                	mv	a0,s1
    10d6:	85a2                	mv	a1,s0
    10d8:	3db5                	jal	f54 <__sflush_r>
    10da:	507c                	lw	a5,100(s0)
    10dc:	84aa                	mv	s1,a0
    10de:	8b85                	andi	a5,a5,1
    10e0:	fbd5                	bnez	a5,1094 <_fflush_r+0xe>
    10e2:	245e                	.2byte	0x245e
    10e4:	2007f793          	andi	a5,a5,512
    10e8:	f7d5                	bnez	a5,1094 <_fflush_r+0xe>
    10ea:	4c28                	lw	a0,88(s0)
    10ec:	f10ff0ef          	jal	ra,7fc <__retarget_lock_release_recursive>
    10f0:	b755                	j	1094 <_fflush_r+0xe>
    10f2:	00000797          	auipc	a5,0x0
    10f6:	67e78793          	addi	a5,a5,1662 # 1770 <__sf_fake_stdout>
    10fa:	00f41463          	bne	s0,a5,1102 <_fflush_r+0x7c>
    10fe:	4480                	lw	s0,8(s1)
    1100:	bf75                	j	10bc <_fflush_r+0x36>
    1102:	00000797          	auipc	a5,0x0
    1106:	64e78793          	addi	a5,a5,1614 # 1750 <__sf_fake_stderr>
    110a:	faf419e3          	bne	s0,a5,10bc <_fflush_r+0x36>
    110e:	44c0                	lw	s0,12(s1)
    1110:	b775                	j	10bc <_fflush_r+0x36>

00001112 <_lseek_r>:
    1112:	1141                	addi	sp,sp,-16
    1114:	c422                	sw	s0,8(sp)
    1116:	842a                	mv	s0,a0
    1118:	852e                	mv	a0,a1
    111a:	85b2                	mv	a1,a2
    111c:	8636                	mv	a2,a3
    111e:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    1122:	c606                	sw	ra,12(sp)
    1124:	23fd                	jal	1712 <_lseek>
    1126:	57fd                	li	a5,-1
    1128:	00f51663          	bne	a0,a5,1134 <_lseek_r+0x22>
    112c:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    1130:	c391                	beqz	a5,1134 <_lseek_r+0x22>
    1132:	c01c                	sw	a5,0(s0)
    1134:	40b2                	lw	ra,12(sp)
    1136:	4422                	lw	s0,8(sp)
    1138:	0141                	addi	sp,sp,16
    113a:	8082                	ret

0000113c <__swhatbuf_r>:
    113c:	7159                	addi	sp,sp,-112
    113e:	d4a2                	sw	s0,104(sp)
    1140:	842e                	mv	s0,a1
    1142:	00e59583          	lh	a1,14(a1)
    1146:	d2a6                	sw	s1,100(sp)
    1148:	d0ca                	sw	s2,96(sp)
    114a:	d686                	sw	ra,108(sp)
    114c:	84b2                	mv	s1,a2
    114e:	8936                	mv	s2,a3
    1150:	0205d263          	bgez	a1,1174 <__swhatbuf_r+0x38>
    1154:	245e                	.2byte	0x245e
    1156:	0807f793          	andi	a5,a5,128
    115a:	eb8d                	bnez	a5,118c <__swhatbuf_r+0x50>
    115c:	40000713          	li	a4,1024
    1160:	50b6                	lw	ra,108(sp)
    1162:	5426                	lw	s0,104(sp)
    1164:	00f92023          	sw	a5,0(s2)
    1168:	c098                	sw	a4,0(s1)
    116a:	5906                	lw	s2,96(sp)
    116c:	5496                	lw	s1,100(sp)
    116e:	4501                	li	a0,0
    1170:	6165                	addi	sp,sp,112
    1172:	8082                	ret
    1174:	0030                	addi	a2,sp,8
    1176:	232d                	jal	16a0 <_fstat_r>
    1178:	fc054ee3          	bltz	a0,1154 <__swhatbuf_r+0x18>
    117c:	4732                	lw	a4,12(sp)
    117e:	67bd                	lui	a5,0xf
    1180:	8ff9                	and	a5,a5,a4
    1182:	7779                	lui	a4,0xffffe
    1184:	97ba                	add	a5,a5,a4
    1186:	0017b793          	seqz	a5,a5
    118a:	bfc9                	j	115c <__swhatbuf_r+0x20>
    118c:	4781                	li	a5,0
    118e:	04000713          	li	a4,64
    1192:	b7f9                	j	1160 <__swhatbuf_r+0x24>

00001194 <__smakebuf_r>:
    1194:	25de                	.2byte	0x25de
    1196:	7179                	addi	sp,sp,-48
    1198:	d422                	sw	s0,40(sp)
    119a:	d606                	sw	ra,44(sp)
    119c:	d226                	sw	s1,36(sp)
    119e:	d04a                	sw	s2,32(sp)
    11a0:	ce4e                	sw	s3,28(sp)
    11a2:	8b89                	andi	a5,a5,2
    11a4:	842e                	mv	s0,a1
    11a6:	cf91                	beqz	a5,11c2 <__smakebuf_r+0x2e>
    11a8:	04740793          	addi	a5,s0,71
    11ac:	c01c                	sw	a5,0(s0)
    11ae:	c81c                	sw	a5,16(s0)
    11b0:	4785                	li	a5,1
    11b2:	c85c                	sw	a5,20(s0)
    11b4:	50b2                	lw	ra,44(sp)
    11b6:	5422                	lw	s0,40(sp)
    11b8:	5492                	lw	s1,36(sp)
    11ba:	5902                	lw	s2,32(sp)
    11bc:	49f2                	lw	s3,28(sp)
    11be:	6145                	addi	sp,sp,48
    11c0:	8082                	ret
    11c2:	0074                	addi	a3,sp,12
    11c4:	0030                	addi	a2,sp,8
    11c6:	84aa                	mv	s1,a0
    11c8:	3f95                	jal	113c <__swhatbuf_r>
    11ca:	49a2                	lw	s3,8(sp)
    11cc:	892a                	mv	s2,a0
    11ce:	8526                	mv	a0,s1
    11d0:	85ce                	mv	a1,s3
    11d2:	e80ff0ef          	jal	ra,852 <_malloc_r>
    11d6:	e919                	bnez	a0,11ec <__smakebuf_r+0x58>
    11d8:	00c41783          	lh	a5,12(s0)
    11dc:	2007f713          	andi	a4,a5,512
    11e0:	fb71                	bnez	a4,11b4 <__smakebuf_r+0x20>
    11e2:	9bf1                	andi	a5,a5,-4
    11e4:	0027e793          	ori	a5,a5,2
    11e8:	a45e                	.2byte	0xa45e
    11ea:	bf7d                	j	11a8 <__smakebuf_r+0x14>
    11ec:	fffff797          	auipc	a5,0xfffff
    11f0:	43278793          	addi	a5,a5,1074 # 61e <_cleanup_r>
    11f4:	d49c                	sw	a5,40(s1)
    11f6:	245e                	.2byte	0x245e
    11f8:	c008                	sw	a0,0(s0)
    11fa:	c808                	sw	a0,16(s0)
    11fc:	0807e793          	ori	a5,a5,128
    1200:	a45e                	.2byte	0xa45e
    1202:	47b2                	lw	a5,12(sp)
    1204:	01342a23          	sw	s3,20(s0)
    1208:	cb99                	beqz	a5,121e <__smakebuf_r+0x8a>
    120a:	00e41583          	lh	a1,14(s0)
    120e:	8526                	mv	a0,s1
    1210:	2965                	jal	16c8 <_isatty_r>
    1212:	c511                	beqz	a0,121e <__smakebuf_r+0x8a>
    1214:	245e                	.2byte	0x245e
    1216:	9bf1                	andi	a5,a5,-4
    1218:	0017e793          	ori	a5,a5,1
    121c:	a45e                	.2byte	0xa45e
    121e:	245e                	.2byte	0x245e
    1220:	0127e533          	or	a0,a5,s2
    1224:	a44a                	.2byte	0xa44a
    1226:	b779                	j	11b4 <__smakebuf_r+0x20>

00001228 <memchr>:
    1228:	0ff5f593          	zext.b	a1,a1
    122c:	962a                	add	a2,a2,a0
    122e:	00c51463          	bne	a0,a2,1236 <memchr+0xe>
    1232:	4501                	li	a0,0
    1234:	8082                	ret
    1236:	211c                	.2byte	0x211c
    1238:	feb78ee3          	beq	a5,a1,1234 <memchr+0xc>
    123c:	0505                	addi	a0,a0,1
    123e:	bfc5                	j	122e <memchr+0x6>

00001240 <__malloc_lock>:
    1240:	81c18513          	addi	a0,gp,-2020 # 2000007c <__lock___malloc_recursive_mutex>
    1244:	db6ff06f          	j	7fa <__retarget_lock_acquire_recursive>

00001248 <__malloc_unlock>:
    1248:	81c18513          	addi	a0,gp,-2020 # 2000007c <__lock___malloc_recursive_mutex>
    124c:	db0ff06f          	j	7fc <__retarget_lock_release_recursive>

00001250 <_free_r>:
    1250:	cdd1                	beqz	a1,12ec <_free_r+0x9c>
    1252:	ffc5a783          	lw	a5,-4(a1)
    1256:	1101                	addi	sp,sp,-32
    1258:	cc22                	sw	s0,24(sp)
    125a:	ce06                	sw	ra,28(sp)
    125c:	ffc58413          	addi	s0,a1,-4
    1260:	0007d363          	bgez	a5,1266 <_free_r+0x16>
    1264:	943e                	add	s0,s0,a5
    1266:	c62a                	sw	a0,12(sp)
    1268:	3fe1                	jal	1240 <__malloc_lock>
    126a:	82c18713          	addi	a4,gp,-2004 # 2000008c <__malloc_free_list>
    126e:	431c                	lw	a5,0(a4)
    1270:	4532                	lw	a0,12(sp)
    1272:	eb81                	bnez	a5,1282 <_free_r+0x32>
    1274:	00042223          	sw	zero,4(s0)
    1278:	c300                	sw	s0,0(a4)
    127a:	4462                	lw	s0,24(sp)
    127c:	40f2                	lw	ra,28(sp)
    127e:	6105                	addi	sp,sp,32
    1280:	b7e1                	j	1248 <__malloc_unlock>
    1282:	00f47d63          	bgeu	s0,a5,129c <_free_r+0x4c>
    1286:	4010                	lw	a2,0(s0)
    1288:	00c406b3          	add	a3,s0,a2
    128c:	00d79663          	bne	a5,a3,1298 <_free_r+0x48>
    1290:	4394                	lw	a3,0(a5)
    1292:	43dc                	lw	a5,4(a5)
    1294:	96b2                	add	a3,a3,a2
    1296:	c014                	sw	a3,0(s0)
    1298:	c05c                	sw	a5,4(s0)
    129a:	bff9                	j	1278 <_free_r+0x28>
    129c:	873e                	mv	a4,a5
    129e:	43dc                	lw	a5,4(a5)
    12a0:	c399                	beqz	a5,12a6 <_free_r+0x56>
    12a2:	fef47de3          	bgeu	s0,a5,129c <_free_r+0x4c>
    12a6:	4314                	lw	a3,0(a4)
    12a8:	00d70633          	add	a2,a4,a3
    12ac:	00861f63          	bne	a2,s0,12ca <_free_r+0x7a>
    12b0:	4010                	lw	a2,0(s0)
    12b2:	96b2                	add	a3,a3,a2
    12b4:	c314                	sw	a3,0(a4)
    12b6:	00d70633          	add	a2,a4,a3
    12ba:	fcc790e3          	bne	a5,a2,127a <_free_r+0x2a>
    12be:	4390                	lw	a2,0(a5)
    12c0:	43dc                	lw	a5,4(a5)
    12c2:	96b2                	add	a3,a3,a2
    12c4:	c314                	sw	a3,0(a4)
    12c6:	c35c                	sw	a5,4(a4)
    12c8:	bf4d                	j	127a <_free_r+0x2a>
    12ca:	00c47563          	bgeu	s0,a2,12d4 <_free_r+0x84>
    12ce:	47b1                	li	a5,12
    12d0:	c11c                	sw	a5,0(a0)
    12d2:	b765                	j	127a <_free_r+0x2a>
    12d4:	4010                	lw	a2,0(s0)
    12d6:	00c406b3          	add	a3,s0,a2
    12da:	00d79663          	bne	a5,a3,12e6 <_free_r+0x96>
    12de:	4394                	lw	a3,0(a5)
    12e0:	43dc                	lw	a5,4(a5)
    12e2:	96b2                	add	a3,a3,a2
    12e4:	c014                	sw	a3,0(s0)
    12e6:	c05c                	sw	a5,4(s0)
    12e8:	c340                	sw	s0,4(a4)
    12ea:	bf41                	j	127a <_free_r+0x2a>
    12ec:	8082                	ret

000012ee <_printf_common>:
    12ee:	7179                	addi	sp,sp,-48
    12f0:	ca56                	sw	s5,20(sp)
    12f2:	499c                	lw	a5,16(a1)
    12f4:	8aba                	mv	s5,a4
    12f6:	4598                	lw	a4,8(a1)
    12f8:	d422                	sw	s0,40(sp)
    12fa:	d04a                	sw	s2,32(sp)
    12fc:	ce4e                	sw	s3,28(sp)
    12fe:	cc52                	sw	s4,24(sp)
    1300:	d606                	sw	ra,44(sp)
    1302:	d226                	sw	s1,36(sp)
    1304:	c85a                	sw	s6,16(sp)
    1306:	c65e                	sw	s7,12(sp)
    1308:	89aa                	mv	s3,a0
    130a:	842e                	mv	s0,a1
    130c:	8932                	mv	s2,a2
    130e:	8a36                	mv	s4,a3
    1310:	00e7d363          	bge	a5,a4,1316 <_printf_common+0x28>
    1314:	87ba                	mv	a5,a4
    1316:	00f92023          	sw	a5,0(s2)
    131a:	04344703          	lbu	a4,67(s0)
    131e:	c701                	beqz	a4,1326 <_printf_common+0x38>
    1320:	0785                	addi	a5,a5,1
    1322:	00f92023          	sw	a5,0(s2)
    1326:	401c                	lw	a5,0(s0)
    1328:	0207f793          	andi	a5,a5,32
    132c:	c791                	beqz	a5,1338 <_printf_common+0x4a>
    132e:	00092783          	lw	a5,0(s2)
    1332:	0789                	addi	a5,a5,2
    1334:	00f92023          	sw	a5,0(s2)
    1338:	4004                	lw	s1,0(s0)
    133a:	8899                	andi	s1,s1,6
    133c:	e891                	bnez	s1,1350 <_printf_common+0x62>
    133e:	01940b13          	addi	s6,s0,25
    1342:	5bfd                	li	s7,-1
    1344:	445c                	lw	a5,12(s0)
    1346:	00092703          	lw	a4,0(s2)
    134a:	8f99                	sub	a5,a5,a4
    134c:	04f4cc63          	blt	s1,a5,13a4 <_printf_common+0xb6>
    1350:	04344783          	lbu	a5,67(s0)
    1354:	00f036b3          	snez	a3,a5
    1358:	401c                	lw	a5,0(s0)
    135a:	0207f793          	andi	a5,a5,32
    135e:	eba5                	bnez	a5,13ce <_printf_common+0xe0>
    1360:	04340613          	addi	a2,s0,67
    1364:	85d2                	mv	a1,s4
    1366:	854e                	mv	a0,s3
    1368:	9a82                	jalr	s5
    136a:	57fd                	li	a5,-1
    136c:	04f50363          	beq	a0,a5,13b2 <_printf_common+0xc4>
    1370:	401c                	lw	a5,0(s0)
    1372:	4711                	li	a4,4
    1374:	4481                	li	s1,0
    1376:	8b99                	andi	a5,a5,6
    1378:	00e79963          	bne	a5,a4,138a <_printf_common+0x9c>
    137c:	4444                	lw	s1,12(s0)
    137e:	00092783          	lw	a5,0(s2)
    1382:	8c9d                	sub	s1,s1,a5
    1384:	0004d363          	bgez	s1,138a <_printf_common+0x9c>
    1388:	4481                	li	s1,0
    138a:	441c                	lw	a5,8(s0)
    138c:	4818                	lw	a4,16(s0)
    138e:	00f75463          	bge	a4,a5,1396 <_printf_common+0xa8>
    1392:	8f99                	sub	a5,a5,a4
    1394:	94be                	add	s1,s1,a5
    1396:	4901                	li	s2,0
    1398:	0469                	addi	s0,s0,26
    139a:	5b7d                	li	s6,-1
    139c:	05249863          	bne	s1,s2,13ec <_printf_common+0xfe>
    13a0:	4501                	li	a0,0
    13a2:	a809                	j	13b4 <_printf_common+0xc6>
    13a4:	4685                	li	a3,1
    13a6:	865a                	mv	a2,s6
    13a8:	85d2                	mv	a1,s4
    13aa:	854e                	mv	a0,s3
    13ac:	9a82                	jalr	s5
    13ae:	01751e63          	bne	a0,s7,13ca <_printf_common+0xdc>
    13b2:	557d                	li	a0,-1
    13b4:	50b2                	lw	ra,44(sp)
    13b6:	5422                	lw	s0,40(sp)
    13b8:	5492                	lw	s1,36(sp)
    13ba:	5902                	lw	s2,32(sp)
    13bc:	49f2                	lw	s3,28(sp)
    13be:	4a62                	lw	s4,24(sp)
    13c0:	4ad2                	lw	s5,20(sp)
    13c2:	4b42                	lw	s6,16(sp)
    13c4:	4bb2                	lw	s7,12(sp)
    13c6:	6145                	addi	sp,sp,48
    13c8:	8082                	ret
    13ca:	0485                	addi	s1,s1,1
    13cc:	bfa5                	j	1344 <_printf_common+0x56>
    13ce:	00d40733          	add	a4,s0,a3
    13d2:	03000613          	li	a2,48
    13d6:	04c701a3          	sb	a2,67(a4) # ffffe043 <_eusrstack+0xdfff9043>
    13da:	04544703          	lbu	a4,69(s0)
    13de:	00168793          	addi	a5,a3,1
    13e2:	97a2                	add	a5,a5,s0
    13e4:	0689                	addi	a3,a3,2
    13e6:	04e781a3          	sb	a4,67(a5)
    13ea:	bf9d                	j	1360 <_printf_common+0x72>
    13ec:	4685                	li	a3,1
    13ee:	8622                	mv	a2,s0
    13f0:	85d2                	mv	a1,s4
    13f2:	854e                	mv	a0,s3
    13f4:	9a82                	jalr	s5
    13f6:	fb650ee3          	beq	a0,s6,13b2 <_printf_common+0xc4>
    13fa:	0905                	addi	s2,s2,1
    13fc:	b745                	j	139c <_printf_common+0xae>

000013fe <_printf_i>:
    13fe:	7179                	addi	sp,sp,-48
    1400:	d422                	sw	s0,40(sp)
    1402:	d04a                	sw	s2,32(sp)
    1404:	ce4e                	sw	s3,28(sp)
    1406:	cc52                	sw	s4,24(sp)
    1408:	d606                	sw	ra,44(sp)
    140a:	d226                	sw	s1,36(sp)
    140c:	ca56                	sw	s5,20(sp)
    140e:	c85a                	sw	s6,16(sp)
    1410:	0185c803          	lbu	a6,24(a1)
    1414:	07800793          	li	a5,120
    1418:	892a                	mv	s2,a0
    141a:	842e                	mv	s0,a1
    141c:	89b2                	mv	s3,a2
    141e:	8a36                	mv	s4,a3
    1420:	0307e263          	bltu	a5,a6,1444 <_printf_i+0x46>
    1424:	06200793          	li	a5,98
    1428:	04358693          	addi	a3,a1,67
    142c:	0307e163          	bltu	a5,a6,144e <_printf_i+0x50>
    1430:	1c080b63          	beqz	a6,1606 <_printf_i+0x208>
    1434:	05800793          	li	a5,88
    1438:	00000617          	auipc	a2,0x0
    143c:	38c60613          	addi	a2,a2,908 # 17c4 <__sf_fake_stdin+0x34>
    1440:	14f80763          	beq	a6,a5,158e <_printf_i+0x190>
    1444:	04240493          	addi	s1,s0,66
    1448:	05040123          	sb	a6,66(s0)
    144c:	a815                	j	1480 <_printf_i+0x82>
    144e:	f9d80793          	addi	a5,a6,-99
    1452:	0ff7f793          	zext.b	a5,a5
    1456:	4655                	li	a2,21
    1458:	fef666e3          	bltu	a2,a5,1444 <_printf_i+0x46>
    145c:	00000617          	auipc	a2,0x0
    1460:	39060613          	addi	a2,a2,912 # 17ec <__sf_fake_stdin+0x5c>
    1464:	078a                	slli	a5,a5,0x2
    1466:	97b2                	add	a5,a5,a2
    1468:	439c                	lw	a5,0(a5)
    146a:	97b2                	add	a5,a5,a2
    146c:	8782                	jr	a5
    146e:	431c                	lw	a5,0(a4)
    1470:	04258493          	addi	s1,a1,66
    1474:	00478693          	addi	a3,a5,4
    1478:	439c                	lw	a5,0(a5)
    147a:	c314                	sw	a3,0(a4)
    147c:	04f58123          	sb	a5,66(a1)
    1480:	4785                	li	a5,1
    1482:	a25d                	j	1628 <_printf_i+0x22a>
    1484:	4190                	lw	a2,0(a1)
    1486:	431c                	lw	a5,0(a4)
    1488:	08067513          	andi	a0,a2,128
    148c:	00478593          	addi	a1,a5,4
    1490:	c129                	beqz	a0,14d2 <_printf_i+0xd4>
    1492:	439c                	lw	a5,0(a5)
    1494:	c30c                	sw	a1,0(a4)
    1496:	4058                	lw	a4,4(s0)
    1498:	1207de63          	bgez	a5,15d4 <_printf_i+0x1d6>
    149c:	02d00593          	li	a1,45
    14a0:	04b401a3          	sb	a1,67(s0)
    14a4:	c418                	sw	a4,8(s0)
    14a6:	02075e63          	bgez	a4,14e2 <_printf_i+0xe4>
    14aa:	40f007b3          	neg	a5,a5
    14ae:	00000617          	auipc	a2,0x0
    14b2:	31660613          	addi	a2,a2,790 # 17c4 <__sf_fake_stdin+0x34>
    14b6:	4829                	li	a6,10
    14b8:	84b6                	mv	s1,a3
    14ba:	0307f733          	remu	a4,a5,a6
    14be:	14fd                	addi	s1,s1,-1
    14c0:	9732                	add	a4,a4,a2
    14c2:	2318                	.2byte	0x2318
    14c4:	a098                	.2byte	0xa098
    14c6:	873e                	mv	a4,a5
    14c8:	0307d7b3          	divu	a5,a5,a6
    14cc:	ff0777e3          	bgeu	a4,a6,14ba <_printf_i+0xbc>
    14d0:	a085                	j	1530 <_printf_i+0x132>
    14d2:	439c                	lw	a5,0(a5)
    14d4:	04067513          	andi	a0,a2,64
    14d8:	c30c                	sw	a1,0(a4)
    14da:	dd55                	beqz	a0,1496 <_printf_i+0x98>
    14dc:	07c2                	slli	a5,a5,0x10
    14de:	87c1                	srai	a5,a5,0x10
    14e0:	bf5d                	j	1496 <_printf_i+0x98>
    14e2:	9a6d                	andi	a2,a2,-5
    14e4:	c010                	sw	a2,0(s0)
    14e6:	b7d1                	j	14aa <_printf_i+0xac>
    14e8:	4190                	lw	a2,0(a1)
    14ea:	431c                	lw	a5,0(a4)
    14ec:	08067513          	andi	a0,a2,128
    14f0:	00478593          	addi	a1,a5,4
    14f4:	c501                	beqz	a0,14fc <_printf_i+0xfe>
    14f6:	c30c                	sw	a1,0(a4)
    14f8:	439c                	lw	a5,0(a5)
    14fa:	a031                	j	1506 <_printf_i+0x108>
    14fc:	04067613          	andi	a2,a2,64
    1500:	c30c                	sw	a1,0(a4)
    1502:	da7d                	beqz	a2,14f8 <_printf_i+0xfa>
    1504:	239e                	.2byte	0x239e
    1506:	06f00713          	li	a4,111
    150a:	00000617          	auipc	a2,0x0
    150e:	2ba60613          	addi	a2,a2,698 # 17c4 <__sf_fake_stdin+0x34>
    1512:	0ae81f63          	bne	a6,a4,15d0 <_printf_i+0x1d2>
    1516:	4821                	li	a6,8
    1518:	040401a3          	sb	zero,67(s0)
    151c:	4058                	lw	a4,4(s0)
    151e:	c418                	sw	a4,8(s0)
    1520:	f8074ce3          	bltz	a4,14b8 <_printf_i+0xba>
    1524:	400c                	lw	a1,0(s0)
    1526:	99ed                	andi	a1,a1,-5
    1528:	c00c                	sw	a1,0(s0)
    152a:	f7d9                	bnez	a5,14b8 <_printf_i+0xba>
    152c:	84b6                	mv	s1,a3
    152e:	f749                	bnez	a4,14b8 <_printf_i+0xba>
    1530:	47a1                	li	a5,8
    1532:	00f81e63          	bne	a6,a5,154e <_printf_i+0x150>
    1536:	401c                	lw	a5,0(s0)
    1538:	8b85                	andi	a5,a5,1
    153a:	cb91                	beqz	a5,154e <_printf_i+0x150>
    153c:	4058                	lw	a4,4(s0)
    153e:	481c                	lw	a5,16(s0)
    1540:	00e7c763          	blt	a5,a4,154e <_printf_i+0x150>
    1544:	03000793          	li	a5,48
    1548:	fef48fa3          	sb	a5,-1(s1)
    154c:	14fd                	addi	s1,s1,-1
    154e:	8e85                	sub	a3,a3,s1
    1550:	c814                	sw	a3,16(s0)
    1552:	8752                	mv	a4,s4
    1554:	86ce                	mv	a3,s3
    1556:	0070                	addi	a2,sp,12
    1558:	85a2                	mv	a1,s0
    155a:	854a                	mv	a0,s2
    155c:	3b49                	jal	12ee <_printf_common>
    155e:	5afd                	li	s5,-1
    1560:	0d551863          	bne	a0,s5,1630 <_printf_i+0x232>
    1564:	557d                	li	a0,-1
    1566:	50b2                	lw	ra,44(sp)
    1568:	5422                	lw	s0,40(sp)
    156a:	5492                	lw	s1,36(sp)
    156c:	5902                	lw	s2,32(sp)
    156e:	49f2                	lw	s3,28(sp)
    1570:	4a62                	lw	s4,24(sp)
    1572:	4ad2                	lw	s5,20(sp)
    1574:	4b42                	lw	s6,16(sp)
    1576:	6145                	addi	sp,sp,48
    1578:	8082                	ret
    157a:	419c                	lw	a5,0(a1)
    157c:	0207e793          	ori	a5,a5,32
    1580:	c19c                	sw	a5,0(a1)
    1582:	07800813          	li	a6,120
    1586:	00000617          	auipc	a2,0x0
    158a:	25260613          	addi	a2,a2,594 # 17d8 <__sf_fake_stdin+0x48>
    158e:	050402a3          	sb	a6,69(s0)
    1592:	400c                	lw	a1,0(s0)
    1594:	431c                	lw	a5,0(a4)
    1596:	0805f813          	andi	a6,a1,128
    159a:	00478513          	addi	a0,a5,4
    159e:	00080563          	beqz	a6,15a8 <_printf_i+0x1aa>
    15a2:	c308                	sw	a0,0(a4)
    15a4:	439c                	lw	a5,0(a5)
    15a6:	a039                	j	15b4 <_printf_i+0x1b6>
    15a8:	0405f813          	andi	a6,a1,64
    15ac:	c308                	sw	a0,0(a4)
    15ae:	fe080be3          	beqz	a6,15a4 <_printf_i+0x1a6>
    15b2:	239e                	.2byte	0x239e
    15b4:	0015f713          	andi	a4,a1,1
    15b8:	c701                	beqz	a4,15c0 <_printf_i+0x1c2>
    15ba:	0205e593          	ori	a1,a1,32
    15be:	c00c                	sw	a1,0(s0)
    15c0:	c399                	beqz	a5,15c6 <_printf_i+0x1c8>
    15c2:	4841                	li	a6,16
    15c4:	bf91                	j	1518 <_printf_i+0x11a>
    15c6:	4018                	lw	a4,0(s0)
    15c8:	fdf77713          	andi	a4,a4,-33
    15cc:	c018                	sw	a4,0(s0)
    15ce:	bfd5                	j	15c2 <_printf_i+0x1c4>
    15d0:	4829                	li	a6,10
    15d2:	b799                	j	1518 <_printf_i+0x11a>
    15d4:	00000617          	auipc	a2,0x0
    15d8:	1f060613          	addi	a2,a2,496 # 17c4 <__sf_fake_stdin+0x34>
    15dc:	4829                	li	a6,10
    15de:	bf3d                	j	151c <_printf_i+0x11e>
    15e0:	4190                	lw	a2,0(a1)
    15e2:	431c                	lw	a5,0(a4)
    15e4:	49cc                	lw	a1,20(a1)
    15e6:	08067813          	andi	a6,a2,128
    15ea:	00478513          	addi	a0,a5,4
    15ee:	00080663          	beqz	a6,15fa <_printf_i+0x1fc>
    15f2:	c308                	sw	a0,0(a4)
    15f4:	439c                	lw	a5,0(a5)
    15f6:	c38c                	sw	a1,0(a5)
    15f8:	a039                	j	1606 <_printf_i+0x208>
    15fa:	c308                	sw	a0,0(a4)
    15fc:	04067613          	andi	a2,a2,64
    1600:	439c                	lw	a5,0(a5)
    1602:	da75                	beqz	a2,15f6 <_printf_i+0x1f8>
    1604:	a38e                	.2byte	0xa38e
    1606:	00042823          	sw	zero,16(s0)
    160a:	84b6                	mv	s1,a3
    160c:	b799                	j	1552 <_printf_i+0x154>
    160e:	431c                	lw	a5,0(a4)
    1610:	41d0                	lw	a2,4(a1)
    1612:	4581                	li	a1,0
    1614:	00478693          	addi	a3,a5,4
    1618:	c314                	sw	a3,0(a4)
    161a:	4384                	lw	s1,0(a5)
    161c:	8526                	mv	a0,s1
    161e:	3129                	jal	1228 <memchr>
    1620:	c119                	beqz	a0,1626 <_printf_i+0x228>
    1622:	8d05                	sub	a0,a0,s1
    1624:	c048                	sw	a0,4(s0)
    1626:	405c                	lw	a5,4(s0)
    1628:	c81c                	sw	a5,16(s0)
    162a:	040401a3          	sb	zero,67(s0)
    162e:	b715                	j	1552 <_printf_i+0x154>
    1630:	4814                	lw	a3,16(s0)
    1632:	8626                	mv	a2,s1
    1634:	85ce                	mv	a1,s3
    1636:	854a                	mv	a0,s2
    1638:	9a02                	jalr	s4
    163a:	f35505e3          	beq	a0,s5,1564 <_printf_i+0x166>
    163e:	401c                	lw	a5,0(s0)
    1640:	8b89                	andi	a5,a5,2
    1642:	e78d                	bnez	a5,166c <_printf_i+0x26e>
    1644:	47b2                	lw	a5,12(sp)
    1646:	4448                	lw	a0,12(s0)
    1648:	f0f55fe3          	bge	a0,a5,1566 <_printf_i+0x168>
    164c:	853e                	mv	a0,a5
    164e:	bf21                	j	1566 <_printf_i+0x168>
    1650:	4685                	li	a3,1
    1652:	8656                	mv	a2,s5
    1654:	85ce                	mv	a1,s3
    1656:	854a                	mv	a0,s2
    1658:	9a02                	jalr	s4
    165a:	f16505e3          	beq	a0,s6,1564 <_printf_i+0x166>
    165e:	0485                	addi	s1,s1,1
    1660:	445c                	lw	a5,12(s0)
    1662:	4732                	lw	a4,12(sp)
    1664:	8f99                	sub	a5,a5,a4
    1666:	fef4c5e3          	blt	s1,a5,1650 <_printf_i+0x252>
    166a:	bfe9                	j	1644 <_printf_i+0x246>
    166c:	4481                	li	s1,0
    166e:	01940a93          	addi	s5,s0,25
    1672:	5b7d                	li	s6,-1
    1674:	b7f5                	j	1660 <_printf_i+0x262>

00001676 <_read_r>:
    1676:	1141                	addi	sp,sp,-16
    1678:	c422                	sw	s0,8(sp)
    167a:	842a                	mv	s0,a0
    167c:	852e                	mv	a0,a1
    167e:	85b2                	mv	a1,a2
    1680:	8636                	mv	a2,a3
    1682:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    1686:	c606                	sw	ra,12(sp)
    1688:	2859                	jal	171e <_read>
    168a:	57fd                	li	a5,-1
    168c:	00f51663          	bne	a0,a5,1698 <_read_r+0x22>
    1690:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    1694:	c391                	beqz	a5,1698 <_read_r+0x22>
    1696:	c01c                	sw	a5,0(s0)
    1698:	40b2                	lw	ra,12(sp)
    169a:	4422                	lw	s0,8(sp)
    169c:	0141                	addi	sp,sp,16
    169e:	8082                	ret

000016a0 <_fstat_r>:
    16a0:	1141                	addi	sp,sp,-16
    16a2:	c422                	sw	s0,8(sp)
    16a4:	842a                	mv	s0,a0
    16a6:	852e                	mv	a0,a1
    16a8:	85b2                	mv	a1,a2
    16aa:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    16ae:	c606                	sw	ra,12(sp)
    16b0:	20a9                	jal	16fa <_fstat>
    16b2:	57fd                	li	a5,-1
    16b4:	00f51663          	bne	a0,a5,16c0 <_fstat_r+0x20>
    16b8:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    16bc:	c391                	beqz	a5,16c0 <_fstat_r+0x20>
    16be:	c01c                	sw	a5,0(s0)
    16c0:	40b2                	lw	ra,12(sp)
    16c2:	4422                	lw	s0,8(sp)
    16c4:	0141                	addi	sp,sp,16
    16c6:	8082                	ret

000016c8 <_isatty_r>:
    16c8:	1141                	addi	sp,sp,-16
    16ca:	c422                	sw	s0,8(sp)
    16cc:	842a                	mv	s0,a0
    16ce:	852e                	mv	a0,a1
    16d0:	8201a823          	sw	zero,-2000(gp) # 20000090 <errno>
    16d4:	c606                	sw	ra,12(sp)
    16d6:	2805                	jal	1706 <_isatty>
    16d8:	57fd                	li	a5,-1
    16da:	00f51663          	bne	a0,a5,16e6 <_isatty_r+0x1e>
    16de:	8301a783          	lw	a5,-2000(gp) # 20000090 <errno>
    16e2:	c391                	beqz	a5,16e6 <_isatty_r+0x1e>
    16e4:	c01c                	sw	a5,0(s0)
    16e6:	40b2                	lw	ra,12(sp)
    16e8:	4422                	lw	s0,8(sp)
    16ea:	0141                	addi	sp,sp,16
    16ec:	8082                	ret

000016ee <_close>:
    16ee:	05800793          	li	a5,88
    16f2:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    16f6:	557d                	li	a0,-1
    16f8:	8082                	ret

000016fa <_fstat>:
    16fa:	05800793          	li	a5,88
    16fe:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    1702:	557d                	li	a0,-1
    1704:	8082                	ret

00001706 <_isatty>:
    1706:	05800793          	li	a5,88
    170a:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    170e:	4501                	li	a0,0
    1710:	8082                	ret

00001712 <_lseek>:
    1712:	05800793          	li	a5,88
    1716:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    171a:	557d                	li	a0,-1
    171c:	8082                	ret

0000171e <_read>:
    171e:	05800793          	li	a5,88
    1722:	82f1a823          	sw	a5,-2000(gp) # 20000090 <errno>
    1726:	557d                	li	a0,-1
    1728:	8082                	ret
    172a:	0000                	unimp
    172c:	74737953          	.4byte	0x74737953
    1730:	6d65                	lui	s10,0x19
    1732:	3a6b6c43          	.4byte	0x3a6b6c43
    1736:	6425                	lui	s0,0x9
    1738:	0a0d                	addi	s4,s4,3
    173a:	0000                	unimp
    173c:	442d                	li	s0,11
    173e:	4245                	li	tp,17
    1740:	4755                	li	a4,21
    1742:	502d                	c.li	zero,-21
    1744:	2d52                	.2byte	0x2d52
    1746:	3025                	jal	f6e <__sflush_r+0x1a>
    1748:	7838                	.2byte	0x7838
    174a:	0a0d                	addi	s4,s4,3
    174c:	0000                	unimp
	...

00001750 <__sf_fake_stderr>:
	...

00001770 <__sf_fake_stdout>:
	...

00001790 <__sf_fake_stdin>:
	...
    17b0:	2d23 2b30 0020 0000 6c68 004c 6665 4567     #-0+ ...hlL.efgE
    17c0:	4746 0000 3130 3332 3534 3736 3938 4241     FG..0123456789AB
    17d0:	4443 4645 0000 0000 3130 3332 3534 3736     CDEF....01234567
    17e0:	3938 6261 6463 6665 0000 0000 fc82 ffff     89abcdef........
    17f0:	fc98 ffff fc58 ffff fc58 ffff fc58 ffff     ....X...X...X...
    1800:	fc58 ffff fc98 ffff fc58 ffff fc58 ffff     X.......X...X...
    1810:	fc58 ffff fc58 ffff fdf4 ffff fcfc ffff     X...X...........
    1820:	fd8e ffff fc58 ffff fc58 ffff fe22 ffff     ....X...X..."...
    1830:	fc58 ffff fcfc ffff fc58 ffff fc58 ffff     X.......X...X...
    1840:	fd96 ffff                                   ....

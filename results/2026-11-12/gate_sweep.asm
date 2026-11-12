
bin/gate_sweep:     file format elf64-littleriscv


Disassembly of section .plt:

0000000000000c00 <.plt>:
 c00:	00002397          	auipc	t2,0x2
 c04:	41c30333          	sub	t1,t1,t3
 c08:	3f03be03          	ld	t3,1008(t2) # 2ff0 <.got.plt>
 c0c:	fd430313          	addi	t1,t1,-44
 c10:	3f038293          	addi	t0,t2,1008
 c14:	00135313          	srli	t1,t1,0x1
 c18:	0082b283          	ld	t0,8(t0)
 c1c:	000e0067          	jr	t3

0000000000000c20 <fprintf@plt>:
 c20:	00002e17          	auipc	t3,0x2
 c24:	3e0e3e03          	ld	t3,992(t3) # 3000 <fprintf@GLIBC_2.27>
 c28:	000e0367          	jalr	t1,t3
 c2c:	00000013          	nop

0000000000000c30 <__libc_start_main@plt>:
 c30:	00002e17          	auipc	t3,0x2
 c34:	3d8e3e03          	ld	t3,984(t3) # 3008 <__libc_start_main@GLIBC_2.34>
 c38:	000e0367          	jalr	t1,t3
 c3c:	00000013          	nop

0000000000000c40 <syscall@plt>:
 c40:	00002e17          	auipc	t3,0x2
 c44:	3d0e3e03          	ld	t3,976(t3) # 3010 <syscall@GLIBC_2.27>
 c48:	000e0367          	jalr	t1,t3
 c4c:	00000013          	nop

0000000000000c50 <getenv@plt>:
 c50:	00002e17          	auipc	t3,0x2
 c54:	3c8e3e03          	ld	t3,968(t3) # 3018 <getenv@GLIBC_2.27>
 c58:	000e0367          	jalr	t1,t3
 c5c:	00000013          	nop

0000000000000c60 <fwrite@plt>:
 c60:	00002e17          	auipc	t3,0x2
 c64:	3c0e3e03          	ld	t3,960(t3) # 3020 <fwrite@GLIBC_2.27>
 c68:	000e0367          	jalr	t1,t3
 c6c:	00000013          	nop

0000000000000c70 <getrusage@plt>:
 c70:	00002e17          	auipc	t3,0x2
 c74:	3b8e3e03          	ld	t3,952(t3) # 3028 <getrusage@GLIBC_2.27>
 c78:	000e0367          	jalr	t1,t3
 c7c:	00000013          	nop

0000000000000c80 <omp_get_wtime@plt>:
 c80:	00002e17          	auipc	t3,0x2
 c84:	3b0e3e03          	ld	t3,944(t3) # 3030 <omp_get_wtime@OMP_2.0>
 c88:	000e0367          	jalr	t1,t3
 c8c:	00000013          	nop

0000000000000c90 <omp_get_thread_num@plt>:
 c90:	00002e17          	auipc	t3,0x2
 c94:	3a8e3e03          	ld	t3,936(t3) # 3038 <omp_get_thread_num@OMP_1.0>
 c98:	000e0367          	jalr	t1,t3
 c9c:	00000013          	nop

0000000000000ca0 <omp_get_max_threads@plt>:
 ca0:	00002e17          	auipc	t3,0x2
 ca4:	3a0e3e03          	ld	t3,928(t3) # 3040 <omp_get_max_threads@OMP_1.0>
 ca8:	000e0367          	jalr	t1,t3
 cac:	00000013          	nop

0000000000000cb0 <__errno_location@plt>:
 cb0:	00002e17          	auipc	t3,0x2
 cb4:	398e3e03          	ld	t3,920(t3) # 3048 <__errno_location@GLIBC_2.27>
 cb8:	000e0367          	jalr	t1,t3
 cbc:	00000013          	nop

0000000000000cc0 <putchar@plt>:
 cc0:	00002e17          	auipc	t3,0x2
 cc4:	390e3e03          	ld	t3,912(t3) # 3050 <putchar@GLIBC_2.27>
 cc8:	000e0367          	jalr	t1,t3
 ccc:	00000013          	nop

0000000000000cd0 <fflush@plt>:
 cd0:	00002e17          	auipc	t3,0x2
 cd4:	388e3e03          	ld	t3,904(t3) # 3058 <fflush@GLIBC_2.27>
 cd8:	000e0367          	jalr	t1,t3
 cdc:	00000013          	nop

0000000000000ce0 <sched_getcpu@plt>:
 ce0:	00002e17          	auipc	t3,0x2
 ce4:	380e3e03          	ld	t3,896(t3) # 3060 <sched_getcpu@GLIBC_2.27>
 ce8:	000e0367          	jalr	t1,t3
 cec:	00000013          	nop

0000000000000cf0 <read@plt>:
 cf0:	00002e17          	auipc	t3,0x2
 cf4:	378e3e03          	ld	t3,888(t3) # 3068 <read@GLIBC_2.27>
 cf8:	000e0367          	jalr	t1,t3
 cfc:	00000013          	nop

0000000000000d00 <omp_get_num_threads@plt>:
 d00:	00002e17          	auipc	t3,0x2
 d04:	370e3e03          	ld	t3,880(t3) # 3070 <omp_get_num_threads@OMP_1.0>
 d08:	000e0367          	jalr	t1,t3
 d0c:	00000013          	nop

0000000000000d10 <__isoc23_strtol@plt>:
 d10:	00002e17          	auipc	t3,0x2
 d14:	368e3e03          	ld	t3,872(t3) # 3078 <__isoc23_strtol@GLIBC_2.38>
 d18:	000e0367          	jalr	t1,t3
 d1c:	00000013          	nop

0000000000000d20 <strerror@plt>:
 d20:	00002e17          	auipc	t3,0x2
 d24:	360e3e03          	ld	t3,864(t3) # 3080 <strerror@GLIBC_2.27>
 d28:	000e0367          	jalr	t1,t3
 d2c:	00000013          	nop

0000000000000d30 <ioctl@plt>:
 d30:	00002e17          	auipc	t3,0x2
 d34:	358e3e03          	ld	t3,856(t3) # 3088 <ioctl@GLIBC_2.27>
 d38:	000e0367          	jalr	t1,t3
 d3c:	00000013          	nop

0000000000000d40 <printf@plt>:
 d40:	00002e17          	auipc	t3,0x2
 d44:	350e3e03          	ld	t3,848(t3) # 3090 <printf@GLIBC_2.27>
 d48:	000e0367          	jalr	t1,t3
 d4c:	00000013          	nop

0000000000000d50 <GOMP_parallel@plt>:
 d50:	00002e17          	auipc	t3,0x2
 d54:	348e3e03          	ld	t3,840(t3) # 3098 <GOMP_parallel@GOMP_4.0>
 d58:	000e0367          	jalr	t1,t3
 d5c:	00000013          	nop

0000000000000d60 <aligned_alloc@plt>:
 d60:	00002e17          	auipc	t3,0x2
 d64:	340e3e03          	ld	t3,832(t3) # 30a0 <aligned_alloc@GLIBC_2.27>
 d68:	000e0367          	jalr	t1,t3
 d6c:	00000013          	nop

0000000000000d70 <free@plt>:
 d70:	00002e17          	auipc	t3,0x2
 d74:	338e3e03          	ld	t3,824(t3) # 30a8 <free@GLIBC_2.27>
 d78:	000e0367          	jalr	t1,t3
 d7c:	00000013          	nop

Disassembly of section .text:

0000000000000d80 <main>:
     d80:	90010113          	addi	sp,sp,-1792
     d84:	6e113c23          	sd	ra,1784(sp)
     d88:	6e813823          	sd	s0,1776(sp)
     d8c:	6e913423          	sd	s1,1768(sp)
     d90:	6d413823          	sd	s4,1744(sp)
     d94:	6d513423          	sd	s5,1736(sp)
     d98:	4785                	li	a5,1
     d9a:	06a7c1e3          	blt	a5,a0,15fc <main+0x87c>
     d9e:	47a9                	li	a5,10
     da0:	fd3e                	sd	a5,184(sp)
     da2:	47e1                	li	a5,24
     da4:	e8be                	sd	a5,80(sp)
     da6:	e482                	sd	zero,72(sp)
     da8:	00001517          	auipc	a0,0x1
     dac:	bc050513          	addi	a0,a0,-1088 # 1968 <_IO_stdin_used+0x30>
     db0:	ea1ff0ef          	jal	c50 <getenv@plt>
     db4:	4a81                	li	s5,0
     db6:	cd19                	beqz	a0,dd4 <main+0x54>
     db8:	00001517          	auipc	a0,0x1
     dbc:	bb050513          	addi	a0,a0,-1104 # 1968 <_IO_stdin_used+0x30>
     dc0:	e91ff0ef          	jal	c50 <getenv@plt>
     dc4:	4629                	li	a2,10
     dc6:	4581                	li	a1,0
     dc8:	f49ff0ef          	jal	d10 <__isoc23_strtol@plt>
     dcc:	00050a9b          	sext.w	s5,a0
     dd0:	01503ab3          	snez	s5,s5
     dd4:	ecdff0ef          	jal	ca0 <omp_get_max_threads@plt>
     dd8:	04000493          	li	s1,64
     ddc:	8a2a                	mv	s4,a0
     dde:	06a4c1e3          	blt	s1,a0,1640 <main+0x8c0>
     de2:	69b13c23          	sd	s11,1688(sp)
     de6:	15010d93          	addi	s11,sp,336
     dea:	85ee                	mv	a1,s11
     dec:	4501                	li	a0,0
     dee:	e83ff0ef          	jal	c70 <getrusage@plt>
     df2:	67c6                	ld	a5,80(sp)
     df4:	4421                	li	s0,8
     df6:	8526                	mv	a0,s1
     df8:	00f41433          	sll	s0,s0,a5
     dfc:	85a2                	mv	a1,s0
     dfe:	f63ff0ef          	jal	d60 <aligned_alloc@plt>
     e02:	e0aa                	sd	a0,64(sp)
     e04:	080500e3          	beqz	a0,1684 <main+0x904>
     e08:	6746                	ld	a4,80(sp)
     e0a:	4785                	li	a5,1
     e0c:	6d613023          	sd	s6,1728(sp)
     e10:	00e794b3          	sll	s1,a5,a4
     e14:	6786                	ld	a5,64(sp)
     e16:	47010b13          	addi	s6,sp,1136
     e1a:	4681                	li	a3,0
     e1c:	85da                	mv	a1,s6
     e1e:	4601                	li	a2,0
     e20:	00001517          	auipc	a0,0x1
     e24:	a8850513          	addi	a0,a0,-1400 # 18a8 <main._omp_fn.0>
     e28:	68813427          	fsd	fs0,1672(sp)
     e2c:	67313827          	fsd	fs3,1648(sp)
     e30:	f0a6                	sd	s1,96(sp)
     e32:	46f13c23          	sd	a5,1144(sp)
     e36:	46913823          	sd	s1,1136(sp)
     e3a:	6f213023          	sd	s2,1760(sp)
     e3e:	6d313c23          	sd	s3,1752(sp)
     e42:	6b713c23          	sd	s7,1720(sp)
     e46:	6b813823          	sd	s8,1712(sp)
     e4a:	6b913423          	sd	s9,1704(sp)
     e4e:	6ba13023          	sd	s10,1696(sp)
     e52:	effff0ef          	jal	d50 <GOMP_parallel@plt>
     e56:	139c                	addi	a5,sp,480
     e58:	85be                	mv	a1,a5
     e5a:	4501                	li	a0,0
     e5c:	ecbe                	sd	a5,88(sp)
     e5e:	e13ff0ef          	jal	c70 <getrusage@plt>
     e62:	d234f9d3          	fcvt.d.lu	fs3,s1
     e66:	00001797          	auipc	a5,0x1
     e6a:	d6a7b407          	fld	fs0,-662(a5) # 1bd0 <_IO_stdin_used+0x298>
     e6e:	00001797          	auipc	a5,0x1
     e72:	d6a7b707          	fld	fa4,-662(a5) # 1bd8 <_IO_stdin_used+0x2a0>
     e76:	67a6                	ld	a5,72(sp)
     e78:	1289f7d3          	fmul.d	fa5,fs3,fs0
     e7c:	00002497          	auipc	s1,0x2
     e80:	1544b483          	ld	s1,340(s1) # 2fd0 <stderr@GLIBC_2.27>
     e84:	6088                	ld	a0,0(s1)
     e86:	00001817          	auipc	a6,0x1
     e8a:	ad280813          	addi	a6,a6,-1326 # 1958 <_IO_stdin_used+0x20>
     e8e:	12e7f7d3          	fmul.d	fa5,fa5,fa4
     e92:	e20786d3          	fmv.x.d	a3,fa5
     e96:	c789                	beqz	a5,ea0 <main+0x120>
     e98:	00001817          	auipc	a6,0x1
     e9c:	ab080813          	addi	a6,a6,-1360 # 1948 <_IO_stdin_used+0x10>
     ea0:	77ea                	ld	a5,184(sp)
     ea2:	6646                	ld	a2,80(sp)
     ea4:	8752                	mv	a4,s4
     ea6:	00001597          	auipc	a1,0x1
     eaa:	b0258593          	addi	a1,a1,-1278 # 19a8 <_IO_stdin_used+0x70>
     eae:	d73ff0ef          	jal	c20 <fprintf@plt>
     eb2:	22813583          	ld	a1,552(sp)
     eb6:	66fa                	ld	a3,408(sp)
     eb8:	22013603          	ld	a2,544(sp)
     ebc:	67da                	ld	a5,400(sp)
     ebe:	6088                	ld	a0,0(s1)
     ec0:	40d586b3          	sub	a3,a1,a3
     ec4:	8e1d                	sub	a2,a2,a5
     ec6:	00001597          	auipc	a1,0x1
     eca:	b1a58593          	addi	a1,a1,-1254 # 19e0 <_IO_stdin_used+0xa8>
     ece:	00c45713          	srli	a4,s0,0xc
     ed2:	d4fff0ef          	jal	c20 <fprintf@plt>
     ed6:	6088                	ld	a0,0(s1)
     ed8:	00001617          	auipc	a2,0x1
     edc:	b5860613          	addi	a2,a2,-1192 # 1a30 <_IO_stdin_used+0xf8>
     ee0:	00001597          	auipc	a1,0x1
     ee4:	b5858593          	addi	a1,a1,-1192 # 1a38 <_IO_stdin_used+0x100>
     ee8:	d39ff0ef          	jal	c20 <fprintf@plt>
     eec:	200a9f63          	bnez	s5,110a <main+0x38a>
     ef0:	00001517          	auipc	a0,0x1
     ef4:	bb850513          	addi	a0,a0,-1096 # 1aa8 <_IO_stdin_used+0x170>
     ef8:	e49ff0ef          	jal	d40 <printf@plt>
     efc:	4529                	li	a0,10
     efe:	dc3ff0ef          	jal	cc0 <putchar@plt>
     f02:	77ea                	ld	a5,184(sp)
     f04:	0339f9d3          	fadd.d	fs3,fs3,fs3
     f08:	0017831b          	addiw	t1,a5,1
     f0c:	67c6                	ld	a5,80(sp)
     f0e:	02f308bb          	mulw	a7,t1,a5
     f12:	1289f9d3          	fmul.d	fs3,fs3,fs0
     f16:	1b105563          	blez	a7,10c0 <main+0x340>
     f1a:	68913027          	fsd	fs1,1664(sp)
     f1e:	67213c27          	fsd	fs2,1656(sp)
     f22:	00001797          	auipc	a5,0x1
     f26:	cbe7b487          	fld	fs1,-834(a5) # 1be0 <_IO_stdin_used+0x2a8>
     f2a:	00001797          	auipc	a5,0x1
     f2e:	cbe7b907          	fld	fs2,-834(a5) # 1be8 <_IO_stdin_used+0x2b0>
     f32:	003a1913          	slli	s2,s4,0x3
     f36:	020a1793          	slli	a5,s4,0x20
     f3a:	01e7dc13          	srli	s8,a5,0x1e
     f3e:	1c9c                	addi	a5,sp,624
     f40:	37010d13          	addi	s10,sp,880
     f44:	fc3e                	sd	a5,56(sp)
     f46:	09bc                	addi	a5,sp,216
     f48:	995a                	add	s2,s2,s6
     f4a:	9c6a                	add	s8,s8,s10
     f4c:	4481                	li	s1,0
     f4e:	f8be                	sd	a5,112(sp)
     f50:	4c85                	li	s9,1
     f52:	fc9a                	sd	t1,120(sp)
     f54:	f4c6                	sd	a7,104(sp)
     f56:	67a6                	ld	a5,72(sp)
     f58:	30079263          	bnez	a5,125c <main+0x4dc>
     f5c:	77e6                	ld	a5,120(sp)
     f5e:	85ee                	mv	a1,s11
     f60:	4501                	li	a0,0
     f62:	02f4e43b          	remw	s0,s1,a5
     f66:	02f4c9bb          	divw	s3,s1,a5
     f6a:	347d                	addiw	s0,s0,-1
     f6c:	013c9bb3          	sll	s7,s9,s3
     f70:	d01ff0ef          	jal	c70 <getrusage@plt>
     f74:	300a9263          	bnez	s5,1278 <main+0x4f8>
     f78:	d09ff0ef          	jal	c80 <omp_get_wtime@plt>
     f7c:	6786                	ld	a5,64(sp)
     f7e:	75c6                	ld	a1,112(sp)
     f80:	22a50453          	fmv.d	fs0,fa0
     f84:	f1be                	sd	a5,224(sp)
     f86:	7786                	ld	a5,96(sp)
     f88:	4681                	li	a3,0
     f8a:	4601                	li	a2,0
     f8c:	edbe                	sd	a5,216(sp)
     f8e:	77e2                	ld	a5,56(sp)
     f90:	00000517          	auipc	a0,0x0
     f94:	7ce50513          	addi	a0,a0,1998 # 175e <main._omp_fn.1>
     f98:	e25e                	sd	s7,256(sp)
     f9a:	f9be                	sd	a5,240(sp)
     f9c:	11312423          	sw	s3,264(sp)
     fa0:	f5da                	sd	s6,232(sp)
     fa2:	fdea                	sd	s10,248(sp)
     fa4:	dadff0ef          	jal	d50 <GOMP_parallel@plt>
     fa8:	cd9ff0ef          	jal	c80 <omp_get_wtime@plt>
     fac:	0a857453          	fsub.d	fs0,fa0,fs0
     fb0:	65e6                	ld	a1,88(sp)
     fb2:	4501                	li	a0,0
     fb4:	cbdff0ef          	jal	c70 <getrusage@plt>
     fb8:	0e044c63          	bltz	s0,10b0 <main+0x330>
     fbc:	47013687          	fld	fa3,1136(sp)
     fc0:	22d687d3          	fmv.d	fa5,fa3
     fc4:	69405c63          	blez	s4,165c <main+0x8dc>
     fc8:	76e2                	ld	a3,56(sp)
     fca:	876a                	mv	a4,s10
     fcc:	87da                	mv	a5,s6
     fce:	4501                	li	a0,0
     fd0:	2398                	fld	fa4,0(a5)
     fd2:	22d68653          	fmv.d	fa2,fa3
     fd6:	07a1                	addi	a5,a5,8
     fd8:	a2d715d3          	flt.d	a1,fa4,fa3
     fdc:	a2e79653          	flt.d	a2,fa5,fa4
     fe0:	c199                	beqz	a1,fe6 <main+0x266>
     fe2:	22e70653          	fmv.d	fa2,fa4
     fe6:	22c606d3          	fmv.d	fa3,fa2
     fea:	c219                	beqz	a2,ff0 <main+0x270>
     fec:	22e707d3          	fmv.d	fa5,fa4
     ff0:	4290                	lw	a2,0(a3)
     ff2:	430c                	lw	a1,0(a4)
     ff4:	0691                	addi	a3,a3,4
     ff6:	00c58363          	beq	a1,a2,ffc <main+0x27c>
     ffa:	2505                	addiw	a0,a0,1
     ffc:	0711                	addi	a4,a4,4
     ffe:	fd2799e3          	bne	a5,s2,fd0 <main+0x250>
    1002:	1297f7d3          	fmul.d	fa5,fa5,fs1
    1006:	1a89f753          	fdiv.d	fa4,fs3,fs0
    100a:	67fe                	ld	a5,472(sp)
    100c:	66de                	ld	a3,464(sp)
    100e:	26813603          	ld	a2,616(sp)
    1012:	26013303          	ld	t1,608(sp)
    1016:	22013583          	ld	a1,544(sp)
    101a:	e20788d3          	fmv.x.d	a7,fa5
    101e:	1296f7d3          	fmul.d	fa5,fa3,fs1
    1022:	8e1d                	sub	a2,a2,a5
    1024:	40d30333          	sub	t1,t1,a3
    1028:	22813783          	ld	a5,552(sp)
    102c:	66fa                	ld	a3,408(sp)
    102e:	f02a                	sd	a0,32(sp)
    1030:	ec32                	sd	a2,24(sp)
    1032:	e2078853          	fmv.x.d	a6,fa5
    1036:	129477d3          	fmul.d	fa5,fs0,fs1
    103a:	40d78533          	sub	a0,a5,a3
    103e:	67da                	ld	a5,400(sp)
    1040:	4621                	li	a2,8
    1042:	e42a                	sd	a0,8(sp)
    1044:	8d9d                	sub	a1,a1,a5
    1046:	e02e                	sd	a1,0(sp)
    1048:	e2078753          	fmv.x.d	a4,fa5
    104c:	1b2777d3          	fdiv.d	fa5,fa4,fs2
    1050:	86a2                	mv	a3,s0
    1052:	e81a                	sd	t1,16(sp)
    1054:	01361633          	sll	a2,a2,s3
    1058:	85ce                	mv	a1,s3
    105a:	00001517          	auipc	a0,0x1
    105e:	ab650513          	addi	a0,a0,-1354 # 1b10 <_IO_stdin_used+0x1d8>
    1062:	e20787d3          	fmv.x.d	a5,fa5
    1066:	cdbff0ef          	jal	d40 <printf@plt>
    106a:	03405763          	blez	s4,1098 <main+0x318>
    106e:	000d2583          	lw	a1,0(s10)
    1072:	00001517          	auipc	a0,0x1
    1076:	ad650513          	addi	a0,a0,-1322 # 1b48 <_IO_stdin_used+0x210>
    107a:	1ec0                	addi	s0,sp,884
    107c:	cc5ff0ef          	jal	d40 <printf@plt>
    1080:	019a0c63          	beq	s4,s9,1098 <main+0x318>
    1084:	400c                	lw	a1,0(s0)
    1086:	00001517          	auipc	a0,0x1
    108a:	aca50513          	addi	a0,a0,-1334 # 1b50 <_IO_stdin_used+0x218>
    108e:	0411                	addi	s0,s0,4
    1090:	cb1ff0ef          	jal	d40 <printf@plt>
    1094:	fe8c18e3          	bne	s8,s0,1084 <main+0x304>
    1098:	400a9e63          	bnez	s5,14b4 <main+0x734>
    109c:	4529                	li	a0,10
    109e:	c23ff0ef          	jal	cc0 <putchar@plt>
    10a2:	00002797          	auipc	a5,0x2
    10a6:	f467b783          	ld	a5,-186(a5) # 2fe8 <stdout@GLIBC_2.27>
    10aa:	6388                	ld	a0,0(a5)
    10ac:	c25ff0ef          	jal	cd0 <fflush@plt>
    10b0:	77a6                	ld	a5,104(sp)
    10b2:	2485                	addiw	s1,s1,1
    10b4:	ea9791e3          	bne	a5,s1,f56 <main+0x1d6>
    10b8:	68013487          	fld	fs1,1664(sp)
    10bc:	67813907          	fld	fs2,1656(sp)
    10c0:	6506                	ld	a0,64(sp)
    10c2:	cafff0ef          	jal	d70 <free@plt>
    10c6:	6e013903          	ld	s2,1760(sp)
    10ca:	6d813983          	ld	s3,1752(sp)
    10ce:	6c013b03          	ld	s6,1728(sp)
    10d2:	6b813b83          	ld	s7,1720(sp)
    10d6:	6b013c03          	ld	s8,1712(sp)
    10da:	6a813c83          	ld	s9,1704(sp)
    10de:	6a013d03          	ld	s10,1696(sp)
    10e2:	69813d83          	ld	s11,1688(sp)
    10e6:	68813407          	fld	fs0,1672(sp)
    10ea:	67013987          	fld	fs3,1648(sp)
    10ee:	4501                	li	a0,0
    10f0:	6f813083          	ld	ra,1784(sp)
    10f4:	6f013403          	ld	s0,1776(sp)
    10f8:	6e813483          	ld	s1,1768(sp)
    10fc:	6d013a03          	ld	s4,1744(sp)
    1100:	6c813a83          	ld	s5,1736(sp)
    1104:	70010113          	addi	sp,sp,1792
    1108:	8082                	ret
    110a:	4585                	li	a1,1
    110c:	5545cf63          	blt	a1,s4,166a <main+0x8ea>
    1110:	48010793          	addi	a5,sp,1152
    1114:	fc3e                	sd	a5,56(sp)
    1116:	4a810793          	addi	a5,sp,1192
    111a:	f4be                	sd	a5,104(sp)
    111c:	4b010793          	addi	a5,sp,1200
    1120:	f8be                	sd	a5,112(sp)
    1122:	4b810793          	addi	a5,sp,1208
    1126:	fcbe                	sd	a5,120(sp)
    1128:	4c010793          	addi	a5,sp,1216
    112c:	e13e                	sd	a5,128(sp)
    112e:	4c810793          	addi	a5,sp,1224
    1132:	e53e                	sd	a5,136(sp)
    1134:	4d010793          	addi	a5,sp,1232
    1138:	e93e                	sd	a5,144(sp)
    113a:	4d810793          	addi	a5,sp,1240
    113e:	ed3e                	sd	a5,152(sp)
    1140:	cc747057          	vsetivli	zero,8,e8,mf2,ta,ma
    1144:	4e010793          	addi	a5,sp,1248
    1148:	f13e                	sd	a5,160(sp)
    114a:	5e0030d7          	vmv.v.i	v1,0
    114e:	4e810793          	addi	a5,sp,1256
    1152:	00002917          	auipc	s2,0x2
    1156:	f6690913          	addi	s2,s2,-154 # 30b8 <hw>
    115a:	f53e                	sd	a5,168(sp)
    115c:	4f010793          	addi	a5,sp,1264
    1160:	89ca                	mv	s3,s2
    1162:	00002417          	auipc	s0,0x2
    1166:	05640413          	addi	s0,s0,86 # 31b8 <__TMC_END__>
    116a:	48810b93          	addi	s7,sp,1160
    116e:	49010c13          	addi	s8,sp,1168
    1172:	49810c93          	addi	s9,sp,1176
    1176:	4a010d13          	addi	s10,sp,1184
    117a:	f93e                	sd	a5,176(sp)
    117c:	78e2                	ld	a7,56(sp)
    117e:	020c80a7          	vse8.v	v1,(s9)
    1182:	0089a583          	lw	a1,8(s3)
    1186:	020880a7          	vse8.v	v1,(a7)
    118a:	020b80a7          	vse8.v	v1,(s7)
    118e:	78a6                	ld	a7,104(sp)
    1190:	020c00a7          	vse8.v	v1,(s8)
    1194:	020d00a7          	vse8.v	v1,(s10)
    1198:	020880a7          	vse8.v	v1,(a7)
    119c:	78c6                	ld	a7,112(sp)
    119e:	0109b503          	ld	a0,16(s3)
    11a2:	577d                	li	a4,-1
    11a4:	020880a7          	vse8.v	v1,(a7)
    11a8:	78e6                	ld	a7,120(sp)
    11aa:	86ba                	mv	a3,a4
    11ac:	06100813          	li	a6,97
    11b0:	020880a7          	vse8.v	v1,(a7)
    11b4:	688a                	ld	a7,128(sp)
    11b6:	4781                	li	a5,0
    11b8:	4601                	li	a2,0
    11ba:	020880a7          	vse8.v	v1,(a7)
    11be:	68aa                	ld	a7,136(sp)
    11c0:	020880a7          	vse8.v	v1,(a7)
    11c4:	68ca                	ld	a7,144(sp)
    11c6:	020880a7          	vse8.v	v1,(a7)
    11ca:	68ea                	ld	a7,152(sp)
    11cc:	020880a7          	vse8.v	v1,(a7)
    11d0:	788a                	ld	a7,160(sp)
    11d2:	020880a7          	vse8.v	v1,(a7)
    11d6:	78aa                	ld	a7,168(sp)
    11d8:	020880a7          	vse8.v	v1,(a7)
    11dc:	78ca                	ld	a7,176(sp)
    11de:	020880a7          	vse8.v	v1,(a7)
    11e2:	08800893          	li	a7,136
    11e6:	46b12823          	sw	a1,1136(sp)
    11ea:	46a13c23          	sd	a0,1144(sp)
    11ee:	85da                	mv	a1,s6
    11f0:	0f100513          	li	a0,241
    11f4:	47112a23          	sw	a7,1140(sp)
    11f8:	49010c23          	sb	a6,1176(sp)
    11fc:	a45ff0ef          	jal	c40 <syscall@plt>
    1200:	2501                	sext.w	a0,a0
    1202:	00a9ac23          	sw	a0,24(s3)
    1206:	609c                	ld	a5,0(s1)
    1208:	0009b603          	ld	a2,0(s3)
    120c:	00001697          	auipc	a3,0x1
    1210:	89468693          	addi	a3,a3,-1900 # 1aa0 <_IO_stdin_used+0x168>
    1214:	00001597          	auipc	a1,0x1
    1218:	87458593          	addi	a1,a1,-1932 # 1a88 <_IO_stdin_used+0x150>
    121c:	3a054663          	bltz	a0,15c8 <main+0x848>
    1220:	853e                	mv	a0,a5
    1222:	9ffff0ef          	jal	c20 <fprintf@plt>
    1226:	cc747057          	vsetivli	zero,8,e8,mf2,ta,ma
    122a:	02098993          	addi	s3,s3,32
    122e:	5e0030d7          	vmv.v.i	v1,0
    1232:	f48995e3          	bne	s3,s0,117c <main+0x3fc>
    1236:	00001517          	auipc	a0,0x1
    123a:	87250513          	addi	a0,a0,-1934 # 1aa8 <_IO_stdin_used+0x170>
    123e:	b03ff0ef          	jal	d40 <printf@plt>
    1242:	00093583          	ld	a1,0(s2)
    1246:	00001517          	auipc	a0,0x1
    124a:	8c250513          	addi	a0,a0,-1854 # 1b08 <_IO_stdin_used+0x1d0>
    124e:	02090913          	addi	s2,s2,32
    1252:	aefff0ef          	jal	d40 <printf@plt>
    1256:	fe8916e3          	bne	s2,s0,1242 <main+0x4c2>
    125a:	b14d                	j	efc <main+0x17c>
    125c:	67c6                	ld	a5,80(sp)
    125e:	85ee                	mv	a1,s11
    1260:	4501                	li	a0,0
    1262:	02f4c43b          	divw	s0,s1,a5
    1266:	02f4e9bb          	remw	s3,s1,a5
    126a:	347d                	addiw	s0,s0,-1
    126c:	013c9bb3          	sll	s7,s9,s3
    1270:	a01ff0ef          	jal	c70 <getrusage@plt>
    1274:	d00a82e3          	beqz	s5,f78 <main+0x1f8>
    1278:	00002797          	auipc	a5,0x2
    127c:	e587a783          	lw	a5,-424(a5) # 30d0 <hw+0x18>
    1280:	0207c263          	bltz	a5,12a4 <main+0x524>
    1284:	6589                	lui	a1,0x2
    1286:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    128a:	4601                	li	a2,0
    128c:	853e                	mv	a0,a5
    128e:	e13e                	sd	a5,128(sp)
    1290:	aa1ff0ef          	jal	d30 <ioctl@plt>
    1294:	678a                	ld	a5,128(sp)
    1296:	6589                	lui	a1,0x2
    1298:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    129c:	853e                	mv	a0,a5
    129e:	4601                	li	a2,0
    12a0:	a91ff0ef          	jal	d30 <ioctl@plt>
    12a4:	00002797          	auipc	a5,0x2
    12a8:	e4c7a783          	lw	a5,-436(a5) # 30f0 <hw+0x38>
    12ac:	0207c263          	bltz	a5,12d0 <main+0x550>
    12b0:	6589                	lui	a1,0x2
    12b2:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    12b6:	4601                	li	a2,0
    12b8:	853e                	mv	a0,a5
    12ba:	e13e                	sd	a5,128(sp)
    12bc:	a75ff0ef          	jal	d30 <ioctl@plt>
    12c0:	678a                	ld	a5,128(sp)
    12c2:	6589                	lui	a1,0x2
    12c4:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    12c8:	853e                	mv	a0,a5
    12ca:	4601                	li	a2,0
    12cc:	a65ff0ef          	jal	d30 <ioctl@plt>
    12d0:	00002797          	auipc	a5,0x2
    12d4:	e407a783          	lw	a5,-448(a5) # 3110 <hw+0x58>
    12d8:	0207c263          	bltz	a5,12fc <main+0x57c>
    12dc:	6589                	lui	a1,0x2
    12de:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    12e2:	4601                	li	a2,0
    12e4:	853e                	mv	a0,a5
    12e6:	e13e                	sd	a5,128(sp)
    12e8:	a49ff0ef          	jal	d30 <ioctl@plt>
    12ec:	678a                	ld	a5,128(sp)
    12ee:	6589                	lui	a1,0x2
    12f0:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    12f4:	853e                	mv	a0,a5
    12f6:	4601                	li	a2,0
    12f8:	a39ff0ef          	jal	d30 <ioctl@plt>
    12fc:	00002797          	auipc	a5,0x2
    1300:	e347a783          	lw	a5,-460(a5) # 3130 <hw+0x78>
    1304:	0207c263          	bltz	a5,1328 <main+0x5a8>
    1308:	6589                	lui	a1,0x2
    130a:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    130e:	4601                	li	a2,0
    1310:	853e                	mv	a0,a5
    1312:	e13e                	sd	a5,128(sp)
    1314:	a1dff0ef          	jal	d30 <ioctl@plt>
    1318:	678a                	ld	a5,128(sp)
    131a:	6589                	lui	a1,0x2
    131c:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    1320:	853e                	mv	a0,a5
    1322:	4601                	li	a2,0
    1324:	a0dff0ef          	jal	d30 <ioctl@plt>
    1328:	00002797          	auipc	a5,0x2
    132c:	e287a783          	lw	a5,-472(a5) # 3150 <hw+0x98>
    1330:	0207c263          	bltz	a5,1354 <main+0x5d4>
    1334:	6589                	lui	a1,0x2
    1336:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    133a:	4601                	li	a2,0
    133c:	853e                	mv	a0,a5
    133e:	e13e                	sd	a5,128(sp)
    1340:	9f1ff0ef          	jal	d30 <ioctl@plt>
    1344:	678a                	ld	a5,128(sp)
    1346:	6589                	lui	a1,0x2
    1348:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    134c:	853e                	mv	a0,a5
    134e:	4601                	li	a2,0
    1350:	9e1ff0ef          	jal	d30 <ioctl@plt>
    1354:	00002797          	auipc	a5,0x2
    1358:	e1c7a783          	lw	a5,-484(a5) # 3170 <hw+0xb8>
    135c:	0207c263          	bltz	a5,1380 <main+0x600>
    1360:	6589                	lui	a1,0x2
    1362:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    1366:	4601                	li	a2,0
    1368:	853e                	mv	a0,a5
    136a:	e13e                	sd	a5,128(sp)
    136c:	9c5ff0ef          	jal	d30 <ioctl@plt>
    1370:	678a                	ld	a5,128(sp)
    1372:	6589                	lui	a1,0x2
    1374:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    1378:	853e                	mv	a0,a5
    137a:	4601                	li	a2,0
    137c:	9b5ff0ef          	jal	d30 <ioctl@plt>
    1380:	00002797          	auipc	a5,0x2
    1384:	e107a783          	lw	a5,-496(a5) # 3190 <hw+0xd8>
    1388:	0207c263          	bltz	a5,13ac <main+0x62c>
    138c:	6589                	lui	a1,0x2
    138e:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    1392:	4601                	li	a2,0
    1394:	853e                	mv	a0,a5
    1396:	e13e                	sd	a5,128(sp)
    1398:	999ff0ef          	jal	d30 <ioctl@plt>
    139c:	678a                	ld	a5,128(sp)
    139e:	6589                	lui	a1,0x2
    13a0:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    13a4:	853e                	mv	a0,a5
    13a6:	4601                	li	a2,0
    13a8:	989ff0ef          	jal	d30 <ioctl@plt>
    13ac:	00002797          	auipc	a5,0x2
    13b0:	e047a783          	lw	a5,-508(a5) # 31b0 <hw+0xf8>
    13b4:	0207c263          	bltz	a5,13d8 <main+0x658>
    13b8:	6589                	lui	a1,0x2
    13ba:	40358593          	addi	a1,a1,1027 # 2403 <__abi_tag+0x637>
    13be:	4601                	li	a2,0
    13c0:	853e                	mv	a0,a5
    13c2:	e13e                	sd	a5,128(sp)
    13c4:	96dff0ef          	jal	d30 <ioctl@plt>
    13c8:	678a                	ld	a5,128(sp)
    13ca:	6589                	lui	a1,0x2
    13cc:	40058593          	addi	a1,a1,1024 # 2400 <__abi_tag+0x634>
    13d0:	853e                	mv	a0,a5
    13d2:	4601                	li	a2,0
    13d4:	95dff0ef          	jal	d30 <ioctl@plt>
    13d8:	8a9ff0ef          	jal	c80 <omp_get_wtime@plt>
    13dc:	6786                	ld	a5,64(sp)
    13de:	75c6                	ld	a1,112(sp)
    13e0:	4681                	li	a3,0
    13e2:	f1be                	sd	a5,224(sp)
    13e4:	7786                	ld	a5,96(sp)
    13e6:	4601                	li	a2,0
    13e8:	00000517          	auipc	a0,0x0
    13ec:	37650513          	addi	a0,a0,886 # 175e <main._omp_fn.1>
    13f0:	edbe                	sd	a5,216(sp)
    13f2:	77e2                	ld	a5,56(sp)
    13f4:	22a50453          	fmv.d	fs0,fa0
    13f8:	e25e                	sd	s7,256(sp)
    13fa:	f9be                	sd	a5,240(sp)
    13fc:	11312423          	sw	s3,264(sp)
    1400:	f5da                	sd	s6,232(sp)
    1402:	fdea                	sd	s10,248(sp)
    1404:	94dff0ef          	jal	d50 <GOMP_parallel@plt>
    1408:	879ff0ef          	jal	c80 <omp_get_wtime@plt>
    140c:	00002b97          	auipc	s7,0x2
    1410:	cc4bab83          	lw	s7,-828(s7) # 30d0 <hw+0x18>
    1414:	57fd                	li	a5,-1
    1416:	ea3e                	sd	a5,272(sp)
    1418:	0a857453          	fsub.d	fs0,fa0,fs0
    141c:	180bd463          	bgez	s7,15a4 <main+0x824>
    1420:	00002b97          	auipc	s7,0x2
    1424:	cd0bab83          	lw	s7,-816(s7) # 30f0 <hw+0x38>
    1428:	57fd                	li	a5,-1
    142a:	ee3e                	sd	a5,280(sp)
    142c:	140bda63          	bgez	s7,1580 <main+0x800>
    1430:	00002b97          	auipc	s7,0x2
    1434:	ce0bab83          	lw	s7,-800(s7) # 3110 <hw+0x58>
    1438:	57fd                	li	a5,-1
    143a:	f23e                	sd	a5,288(sp)
    143c:	120bd063          	bgez	s7,155c <main+0x7dc>
    1440:	00002b97          	auipc	s7,0x2
    1444:	cf0bab83          	lw	s7,-784(s7) # 3130 <hw+0x78>
    1448:	57fd                	li	a5,-1
    144a:	f63e                	sd	a5,296(sp)
    144c:	0e0bd663          	bgez	s7,1538 <main+0x7b8>
    1450:	00002b97          	auipc	s7,0x2
    1454:	d00bab83          	lw	s7,-768(s7) # 3150 <hw+0x98>
    1458:	57fd                	li	a5,-1
    145a:	fa3e                	sd	a5,304(sp)
    145c:	0a0bdc63          	bgez	s7,1514 <main+0x794>
    1460:	00002b97          	auipc	s7,0x2
    1464:	d10bab83          	lw	s7,-752(s7) # 3170 <hw+0xb8>
    1468:	57fd                	li	a5,-1
    146a:	fe3e                	sd	a5,312(sp)
    146c:	080bd263          	bgez	s7,14f0 <main+0x770>
    1470:	00002b97          	auipc	s7,0x2
    1474:	d20bab83          	lw	s7,-736(s7) # 3190 <hw+0xd8>
    1478:	57fd                	li	a5,-1
    147a:	e2be                	sd	a5,320(sp)
    147c:	040bd863          	bgez	s7,14cc <main+0x74c>
    1480:	00002b97          	auipc	s7,0x2
    1484:	d30bab83          	lw	s7,-720(s7) # 31b0 <hw+0xf8>
    1488:	57fd                	li	a5,-1
    148a:	e6be                	sd	a5,328(sp)
    148c:	b20bc2e3          	bltz	s7,fb0 <main+0x230>
    1490:	6589                	lui	a1,0x2
    1492:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    1496:	4601                	li	a2,0
    1498:	855e                	mv	a0,s7
    149a:	897ff0ef          	jal	d30 <ioctl@plt>
    149e:	855e                	mv	a0,s7
    14a0:	02ac                	addi	a1,sp,328
    14a2:	4621                	li	a2,8
    14a4:	84dff0ef          	jal	cf0 <read@plt>
    14a8:	4721                	li	a4,8
    14aa:	b0e503e3          	beq	a0,a4,fb0 <main+0x230>
    14ae:	57fd                	li	a5,-1
    14b0:	e6be                	sd	a5,328(sp)
    14b2:	bcfd                	j	fb0 <main+0x230>
    14b4:	0a00                	addi	s0,sp,272
    14b6:	600c                	ld	a1,0(s0)
    14b8:	00000517          	auipc	a0,0x0
    14bc:	6a050513          	addi	a0,a0,1696 # 1b58 <_IO_stdin_used+0x220>
    14c0:	0421                	addi	s0,s0,8
    14c2:	87fff0ef          	jal	d40 <printf@plt>
    14c6:	fe8d98e3          	bne	s11,s0,14b6 <main+0x736>
    14ca:	bec9                	j	109c <main+0x31c>
    14cc:	6589                	lui	a1,0x2
    14ce:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    14d2:	4601                	li	a2,0
    14d4:	855e                	mv	a0,s7
    14d6:	85bff0ef          	jal	d30 <ioctl@plt>
    14da:	855e                	mv	a0,s7
    14dc:	028c                	addi	a1,sp,320
    14de:	4621                	li	a2,8
    14e0:	811ff0ef          	jal	cf0 <read@plt>
    14e4:	4721                	li	a4,8
    14e6:	f8e50de3          	beq	a0,a4,1480 <main+0x700>
    14ea:	57fd                	li	a5,-1
    14ec:	e2be                	sd	a5,320(sp)
    14ee:	bf49                	j	1480 <main+0x700>
    14f0:	6589                	lui	a1,0x2
    14f2:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    14f6:	4601                	li	a2,0
    14f8:	855e                	mv	a0,s7
    14fa:	837ff0ef          	jal	d30 <ioctl@plt>
    14fe:	855e                	mv	a0,s7
    1500:	1a2c                	addi	a1,sp,312
    1502:	4621                	li	a2,8
    1504:	fecff0ef          	jal	cf0 <read@plt>
    1508:	4721                	li	a4,8
    150a:	f6e503e3          	beq	a0,a4,1470 <main+0x6f0>
    150e:	57fd                	li	a5,-1
    1510:	fe3e                	sd	a5,312(sp)
    1512:	bfb9                	j	1470 <main+0x6f0>
    1514:	6589                	lui	a1,0x2
    1516:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    151a:	4601                	li	a2,0
    151c:	855e                	mv	a0,s7
    151e:	813ff0ef          	jal	d30 <ioctl@plt>
    1522:	855e                	mv	a0,s7
    1524:	1a0c                	addi	a1,sp,304
    1526:	4621                	li	a2,8
    1528:	fc8ff0ef          	jal	cf0 <read@plt>
    152c:	4721                	li	a4,8
    152e:	f2e509e3          	beq	a0,a4,1460 <main+0x6e0>
    1532:	57fd                	li	a5,-1
    1534:	fa3e                	sd	a5,304(sp)
    1536:	b72d                	j	1460 <main+0x6e0>
    1538:	6589                	lui	a1,0x2
    153a:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    153e:	4601                	li	a2,0
    1540:	855e                	mv	a0,s7
    1542:	feeff0ef          	jal	d30 <ioctl@plt>
    1546:	855e                	mv	a0,s7
    1548:	122c                	addi	a1,sp,296
    154a:	4621                	li	a2,8
    154c:	fa4ff0ef          	jal	cf0 <read@plt>
    1550:	4721                	li	a4,8
    1552:	eee50fe3          	beq	a0,a4,1450 <main+0x6d0>
    1556:	57fd                	li	a5,-1
    1558:	f63e                	sd	a5,296(sp)
    155a:	bddd                	j	1450 <main+0x6d0>
    155c:	6589                	lui	a1,0x2
    155e:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    1562:	4601                	li	a2,0
    1564:	855e                	mv	a0,s7
    1566:	fcaff0ef          	jal	d30 <ioctl@plt>
    156a:	855e                	mv	a0,s7
    156c:	120c                	addi	a1,sp,288
    156e:	4621                	li	a2,8
    1570:	f80ff0ef          	jal	cf0 <read@plt>
    1574:	4721                	li	a4,8
    1576:	ece505e3          	beq	a0,a4,1440 <main+0x6c0>
    157a:	57fd                	li	a5,-1
    157c:	f23e                	sd	a5,288(sp)
    157e:	b5c9                	j	1440 <main+0x6c0>
    1580:	6589                	lui	a1,0x2
    1582:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    1586:	4601                	li	a2,0
    1588:	855e                	mv	a0,s7
    158a:	fa6ff0ef          	jal	d30 <ioctl@plt>
    158e:	855e                	mv	a0,s7
    1590:	0a2c                	addi	a1,sp,280
    1592:	4621                	li	a2,8
    1594:	f5cff0ef          	jal	cf0 <read@plt>
    1598:	4721                	li	a4,8
    159a:	e8e50be3          	beq	a0,a4,1430 <main+0x6b0>
    159e:	57fd                	li	a5,-1
    15a0:	ee3e                	sd	a5,280(sp)
    15a2:	b579                	j	1430 <main+0x6b0>
    15a4:	6589                	lui	a1,0x2
    15a6:	40158593          	addi	a1,a1,1025 # 2401 <__abi_tag+0x635>
    15aa:	4601                	li	a2,0
    15ac:	855e                	mv	a0,s7
    15ae:	f82ff0ef          	jal	d30 <ioctl@plt>
    15b2:	855e                	mv	a0,s7
    15b4:	0a0c                	addi	a1,sp,272
    15b6:	4621                	li	a2,8
    15b8:	f38ff0ef          	jal	cf0 <read@plt>
    15bc:	4721                	li	a4,8
    15be:	e6e501e3          	beq	a0,a4,1420 <main+0x6a0>
    15c2:	57fd                	li	a5,-1
    15c4:	ea3e                	sd	a5,272(sp)
    15c6:	bda9                	j	1420 <main+0x6a0>
    15c8:	e5b2                	sd	a2,200(sp)
    15ca:	e1be                	sd	a5,192(sp)
    15cc:	ee4ff0ef          	jal	cb0 <__errno_location@plt>
    15d0:	4108                	lw	a0,0(a0)
    15d2:	02098993          	addi	s3,s3,32
    15d6:	f4aff0ef          	jal	d20 <strerror@plt>
    15da:	678e                	ld	a5,192(sp)
    15dc:	662e                	ld	a2,200(sp)
    15de:	86aa                	mv	a3,a0
    15e0:	00000597          	auipc	a1,0x0
    15e4:	4a858593          	addi	a1,a1,1192 # 1a88 <_IO_stdin_used+0x150>
    15e8:	853e                	mv	a0,a5
    15ea:	e36ff0ef          	jal	c20 <fprintf@plt>
    15ee:	cc747057          	vsetivli	zero,8,e8,mf2,ta,ma
    15f2:	5e0030d7          	vmv.v.i	v1,0
    15f6:	b88993e3          	bne	s3,s0,117c <main+0x3fc>
    15fa:	b935                	j	1236 <main+0x4b6>
    15fc:	842a                	mv	s0,a0
    15fe:	6588                	ld	a0,8(a1)
    1600:	84ae                	mv	s1,a1
    1602:	4629                	li	a2,10
    1604:	4581                	li	a1,0
    1606:	f0aff0ef          	jal	d10 <__isoc23_strtol@plt>
    160a:	0005071b          	sext.w	a4,a0
    160e:	4789                	li	a5,2
    1610:	e8ba                	sd	a4,80(sp)
    1612:	04f40763          	beq	s0,a5,1660 <main+0x8e0>
    1616:	6888                	ld	a0,16(s1)
    1618:	4629                	li	a2,10
    161a:	4581                	li	a1,0
    161c:	ef4ff0ef          	jal	d10 <__isoc23_strtol@plt>
    1620:	0005071b          	sext.w	a4,a0
    1624:	478d                	li	a5,3
    1626:	fd3a                	sd	a4,184(sp)
    1628:	04f40b63          	beq	s0,a5,167e <main+0x8fe>
    162c:	6c9c                	ld	a5,24(s1)
    162e:	0007c783          	lbu	a5,0(a5)
    1632:	f8e78793          	addi	a5,a5,-114
    1636:	0017b793          	seqz	a5,a5
    163a:	e4be                	sd	a5,72(sp)
    163c:	f6cff06f          	j	da8 <main+0x28>
    1640:	00002797          	auipc	a5,0x2
    1644:	9907b783          	ld	a5,-1648(a5) # 2fd0 <stderr@GLIBC_2.27>
    1648:	6388                	ld	a0,0(a5)
    164a:	8626                	mv	a2,s1
    164c:	00000597          	auipc	a1,0x0
    1650:	32c58593          	addi	a1,a1,812 # 1978 <_IO_stdin_used+0x40>
    1654:	dccff0ef          	jal	c20 <fprintf@plt>
    1658:	4505                	li	a0,1
    165a:	bc59                	j	10f0 <main+0x370>
    165c:	4501                	li	a0,0
    165e:	b255                	j	1002 <main+0x282>
    1660:	47a9                	li	a5,10
    1662:	fd3e                	sd	a5,184(sp)
    1664:	e482                	sd	zero,72(sp)
    1666:	f42ff06f          	j	da8 <main+0x28>
    166a:	6094                	ld	a3,0(s1)
    166c:	03300613          	li	a2,51
    1670:	00000517          	auipc	a0,0x0
    1674:	3e050513          	addi	a0,a0,992 # 1a50 <_IO_stdin_used+0x118>
    1678:	de8ff0ef          	jal	c60 <fwrite@plt>
    167c:	bc51                	j	1110 <main+0x390>
    167e:	e482                	sd	zero,72(sp)
    1680:	f28ff06f          	j	da8 <main+0x28>
    1684:	00002797          	auipc	a5,0x2
    1688:	94c7b783          	ld	a5,-1716(a5) # 2fd0 <stderr@GLIBC_2.27>
    168c:	6394                	ld	a3,0(a5)
    168e:	4649                	li	a2,18
    1690:	4585                	li	a1,1
    1692:	00000517          	auipc	a0,0x0
    1696:	2fe50513          	addi	a0,a0,766 # 1990 <_IO_stdin_used+0x58>
    169a:	dc6ff0ef          	jal	c60 <fwrite@plt>
    169e:	4505                	li	a0,1
    16a0:	69813d83          	ld	s11,1688(sp)
    16a4:	b4b1                	j	10f0 <main+0x370>
	...

00000000000016a8 <_start>:
    16a8:	022000ef          	jal	16ca <load_gp>
    16ac:	87aa                	mv	a5,a0
    16ae:	00002517          	auipc	a0,0x2
    16b2:	91a53503          	ld	a0,-1766(a0) # 2fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    16b6:	6582                	ld	a1,0(sp)
    16b8:	0030                	addi	a2,sp,8
    16ba:	ff017113          	andi	sp,sp,-16
    16be:	4681                	li	a3,0
    16c0:	4701                	li	a4,0
    16c2:	880a                	mv	a6,sp
    16c4:	d6cff0ef          	jal	c30 <__libc_start_main@plt>
    16c8:	9002                	ebreak

00000000000016ca <load_gp>:
    16ca:	00002197          	auipc	gp,0x2
    16ce:	1e618193          	addi	gp,gp,486 # 38b0 <__global_pointer$>
    16d2:	8082                	ret
    16d4:	0001                	nop

00000000000016d6 <deregister_tm_clones>:
    16d6:	00002517          	auipc	a0,0x2
    16da:	ae250513          	addi	a0,a0,-1310 # 31b8 <__TMC_END__>
    16de:	00002797          	auipc	a5,0x2
    16e2:	ada78793          	addi	a5,a5,-1318 # 31b8 <__TMC_END__>
    16e6:	00a78863          	beq	a5,a0,16f6 <deregister_tm_clones+0x20>
    16ea:	00002797          	auipc	a5,0x2
    16ee:	8d67b783          	ld	a5,-1834(a5) # 2fc0 <_ITM_deregisterTMCloneTable@Base>
    16f2:	c391                	beqz	a5,16f6 <deregister_tm_clones+0x20>
    16f4:	8782                	jr	a5
    16f6:	8082                	ret

00000000000016f8 <register_tm_clones>:
    16f8:	00002517          	auipc	a0,0x2
    16fc:	ac050513          	addi	a0,a0,-1344 # 31b8 <__TMC_END__>
    1700:	00002597          	auipc	a1,0x2
    1704:	ab858593          	addi	a1,a1,-1352 # 31b8 <__TMC_END__>
    1708:	8d89                	sub	a1,a1,a0
    170a:	4035d793          	srai	a5,a1,0x3
    170e:	91fd                	srli	a1,a1,0x3f
    1710:	95be                	add	a1,a1,a5
    1712:	8585                	srai	a1,a1,0x1
    1714:	c599                	beqz	a1,1722 <register_tm_clones+0x2a>
    1716:	00002797          	auipc	a5,0x2
    171a:	8ca7b783          	ld	a5,-1846(a5) # 2fe0 <_ITM_registerTMCloneTable@Base>
    171e:	c391                	beqz	a5,1722 <register_tm_clones+0x2a>
    1720:	8782                	jr	a5
    1722:	8082                	ret

0000000000001724 <__do_global_dtors_aux>:
    1724:	00002797          	auipc	a5,0x2
    1728:	a947c783          	lbu	a5,-1388(a5) # 31b8 <__TMC_END__>
    172c:	e79d                	bnez	a5,175a <__do_global_dtors_aux+0x36>
    172e:	1141                	addi	sp,sp,-16
    1730:	e406                	sd	ra,8(sp)
    1732:	00002797          	auipc	a5,0x2
    1736:	8a67b783          	ld	a5,-1882(a5) # 2fd8 <__cxa_finalize@GLIBC_2.27>
    173a:	c791                	beqz	a5,1746 <__do_global_dtors_aux+0x22>
    173c:	00002517          	auipc	a0,0x2
    1740:	97453503          	ld	a0,-1676(a0) # 30b0 <__dso_handle>
    1744:	9782                	jalr	a5
    1746:	f91ff0ef          	jal	16d6 <deregister_tm_clones>
    174a:	60a2                	ld	ra,8(sp)
    174c:	4785                	li	a5,1
    174e:	00002717          	auipc	a4,0x2
    1752:	a6f70523          	sb	a5,-1430(a4) # 31b8 <__TMC_END__>
    1756:	0141                	addi	sp,sp,16
    1758:	8082                	ret
    175a:	8082                	ret

000000000000175c <frame_dummy>:
    175c:	bf71                	j	16f8 <register_tm_clones>

000000000000175e <main._omp_fn.1>:
    175e:	711d                	addi	sp,sp,-96
    1760:	ec86                	sd	ra,88(sp)
    1762:	e8a2                	sd	s0,80(sp)
    1764:	e4a6                	sd	s1,72(sp)
    1766:	e0ca                	sd	s2,64(sp)
    1768:	f852                	sd	s4,48(sp)
    176a:	00853903          	ld	s2,8(a0)
    176e:	f456                	sd	s5,40(sp)
    1770:	f05a                	sd	s6,32(sp)
    1772:	02853a83          	ld	s5,40(a0)
    1776:	03052b03          	lw	s6,48(a0)
    177a:	ec5e                	sd	s7,24(sp)
    177c:	a422                	fsd	fs0,8(sp)
    177e:	00053b83          	ld	s7,0(a0)
    1782:	8a2a                	mv	s4,a0
    1784:	d0cff0ef          	jal	c90 <omp_get_thread_num@plt>
    1788:	842a                	mv	s0,a0
    178a:	d56ff0ef          	jal	ce0 <sched_getcpu@plt>
    178e:	018a3783          	ld	a5,24(s4)
    1792:	00241493          	slli	s1,s0,0x2
    1796:	97a6                	add	a5,a5,s1
    1798:	c388                	sw	a0,0(a5)
    179a:	ce6ff0ef          	jal	c80 <omp_get_wtime@plt>
    179e:	4785                	li	a5,1
    17a0:	22a50453          	fmv.d	fs0,fa0
    17a4:	0d77f563          	bgeu	a5,s7,186e <main._omp_fn.1+0x110>
    17a8:	fc4e                	sd	s3,56(sp)
    17aa:	001bd993          	srli	s3,s7,0x1
    17ae:	d52ff0ef          	jal	d00 <omp_get_num_threads@plt>
    17b2:	02a9f7b3          	remu	a5,s3,a0
    17b6:	02a9d833          	divu	a6,s3,a0
    17ba:	0ef46463          	bltu	s0,a5,18a2 <main._omp_fn.1+0x144>
    17be:	02880733          	mul	a4,a6,s0
    17c2:	973e                	add	a4,a4,a5
    17c4:	983a                	add	a6,a6,a4
    17c6:	0b077363          	bgeu	a4,a6,186c <main._omp_fn.1+0x10e>
    17ca:	00000797          	auipc	a5,0x0
    17ce:	1727a107          	flw	ft2,370(a5) # 193c <_IO_stdin_used+0x4>
    17d2:	00000797          	auipc	a5,0x0
    17d6:	16e7a087          	flw	ft1,366(a5) # 1940 <_IO_stdin_used+0x8>
    17da:	f00005d3          	fmv.w.x	fa1,zero
    17de:	001b089b          	addiw	a7,s6,1
    17e2:	fffa8513          	addi	a0,s5,-1
    17e6:	016757b3          	srl	a5,a4,s6
    17ea:	00a776b3          	and	a3,a4,a0
    17ee:	011797b3          	sll	a5,a5,a7
    17f2:	8fd5                	or	a5,a5,a3
    17f4:	00379693          	slli	a3,a5,0x3
    17f8:	00468613          	addi	a2,a3,4
    17fc:	964a                	add	a2,a2,s2
    17fe:	00062707          	flw	fa4,0(a2)
    1802:	96ca                	add	a3,a3,s2
    1804:	0006a787          	flw	fa5,0(a3)
    1808:	10b77653          	fmul.s	fa2,fa4,fa1
    180c:	00fae7b3          	or	a5,s5,a5
    1810:	10b7f1d3          	fmul.s	ft3,fa5,fa1
    1814:	078e                	slli	a5,a5,0x3
    1816:	00f905b3          	add	a1,s2,a5
    181a:	6027f047          	fmsub.s	ft0,fa5,ft2,fa2
    181e:	0791                	addi	a5,a5,4
    1820:	18277543          	fmadd.s	fa0,fa4,ft2,ft3
    1824:	0005a687          	flw	fa3,0(a1)
    1828:	97ca                	add	a5,a5,s2
    182a:	1817774b          	fnmsub.s	fa4,fa4,ft1,ft3
    182e:	6017f7c3          	fmadd.s	fa5,fa5,ft1,fa2
    1832:	0007a607          	flw	fa2,0(a5)
    1836:	00b6f043          	fmadd.s	ft0,fa3,fa1,ft0
    183a:	0705                	addi	a4,a4,1
    183c:	50b67543          	fmadd.s	fa0,fa2,fa1,fa0
    1840:	7026f743          	fmadd.s	fa4,fa3,ft2,fa4
    1844:	782677c3          	fmadd.s	fa5,fa2,ft2,fa5
    1848:	0016704b          	fnmsub.s	ft0,fa2,ft1,ft0
    184c:	5016f543          	fmadd.s	fa0,fa3,ft1,fa0
    1850:	70b6764b          	fnmsub.s	fa2,fa2,fa1,fa4
    1854:	78b6f6c3          	fmadd.s	fa3,fa3,fa1,fa5
    1858:	0006a027          	fsw	ft0,0(a3)
    185c:	00a62027          	fsw	fa0,0(a2)
    1860:	00c5a027          	fsw	fa2,0(a1)
    1864:	00d7a027          	fsw	fa3,0(a5)
    1868:	f6e81fe3          	bne	a6,a4,17e6 <main._omp_fn.1+0x88>
    186c:	79e2                	ld	s3,56(sp)
    186e:	c12ff0ef          	jal	c80 <omp_get_wtime@plt>
    1872:	0a857553          	fsub.d	fa0,fa0,fs0
    1876:	010a3783          	ld	a5,16(s4)
    187a:	040e                	slli	s0,s0,0x3
    187c:	97a2                	add	a5,a5,s0
    187e:	a388                	fsd	fa0,0(a5)
    1880:	c60ff0ef          	jal	ce0 <sched_getcpu@plt>
    1884:	020a3783          	ld	a5,32(s4)
    1888:	60e6                	ld	ra,88(sp)
    188a:	6446                	ld	s0,80(sp)
    188c:	97a6                	add	a5,a5,s1
    188e:	c388                	sw	a0,0(a5)
    1890:	64a6                	ld	s1,72(sp)
    1892:	6906                	ld	s2,64(sp)
    1894:	7a42                	ld	s4,48(sp)
    1896:	7aa2                	ld	s5,40(sp)
    1898:	7b02                	ld	s6,32(sp)
    189a:	6be2                	ld	s7,24(sp)
    189c:	2422                	fld	fs0,8(sp)
    189e:	6125                	addi	sp,sp,96
    18a0:	8082                	ret
    18a2:	0805                	addi	a6,a6,1
    18a4:	4781                	li	a5,0
    18a6:	bf21                	j	17be <main._omp_fn.1+0x60>

00000000000018a8 <main._omp_fn.0>:
    18a8:	1101                	addi	sp,sp,-32
    18aa:	e822                	sd	s0,16(sp)
    18ac:	6100                	ld	s0,0(a0)
    18ae:	ec06                	sd	ra,24(sp)
    18b0:	c835                	beqz	s0,1924 <main._omp_fn.0+0x7c>
    18b2:	e426                	sd	s1,8(sp)
    18b4:	e04a                	sd	s2,0(sp)
    18b6:	892a                	mv	s2,a0
    18b8:	c48ff0ef          	jal	d00 <omp_get_num_threads@plt>
    18bc:	84aa                	mv	s1,a0
    18be:	bd2ff0ef          	jal	c90 <omp_get_thread_num@plt>
    18c2:	02947733          	remu	a4,s0,s1
    18c6:	87aa                	mv	a5,a0
    18c8:	02945433          	divu	s0,s0,s1
    18cc:	06e56063          	bltu	a0,a4,192c <main._omp_fn.0+0x84>
    18d0:	02f407b3          	mul	a5,s0,a5
    18d4:	97ba                	add	a5,a5,a4
    18d6:	00f40733          	add	a4,s0,a5
    18da:	04e7f363          	bgeu	a5,a4,1920 <main._omp_fn.0+0x78>
    18de:	00893703          	ld	a4,8(s2)
    18e2:	3a8316b7          	lui	a3,0x3a831
    18e6:	26f68693          	addi	a3,a3,623 # 3a83126f <__global_pointer$+0x3a82d9bf>
    18ea:	0d807657          	vsetvli	a2,zero,e64,m1,ta,ma
    18ee:	c2202573          	csrr	a0,vlenb
    18f2:	078e                	slli	a5,a5,0x3
    18f4:	5e06c0d7          	vmv.v.x	v1,a3
    18f8:	00255693          	srli	a3,a0,0x2
    18fc:	973e                	add	a4,a4,a5
    18fe:	40d00833          	neg	a6,a3
    1902:	00141793          	slli	a5,s0,0x1
    1906:	85be                	mv	a1,a5
    1908:	863e                	mv	a2,a5
    190a:	00f6f363          	bgeu	a3,a5,1910 <main._omp_fn.0+0x68>
    190e:	8636                	mv	a2,a3
    1910:	0d067057          	vsetvli	zero,a2,e32,m1,ta,ma
    1914:	020760a7          	vse32.v	v1,(a4)
    1918:	97c2                	add	a5,a5,a6
    191a:	972a                	add	a4,a4,a0
    191c:	feb6e5e3          	bltu	a3,a1,1906 <main._omp_fn.0+0x5e>
    1920:	64a2                	ld	s1,8(sp)
    1922:	6902                	ld	s2,0(sp)
    1924:	60e2                	ld	ra,24(sp)
    1926:	6442                	ld	s0,16(sp)
    1928:	6105                	addi	sp,sp,32
    192a:	8082                	ret
    192c:	0405                	addi	s0,s0,1
    192e:	4701                	li	a4,0
    1930:	b745                	j	18d0 <main._omp_fn.0+0x28>

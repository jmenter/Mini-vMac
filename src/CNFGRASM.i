

	.macro my_imports_begin

	.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

	.endmacro


	.macro my_imports_end

	.subsections_via_symbols

	.endmacro


	.macro my_import_proc

L_$0$stub:
	.indirect_symbol _$0
	hlt ; hlt ; hlt ; hlt ; hlt

	.endmacro


	.macro my_call_imported_proc

	call	L_$0$stub

	.endmacro


	.macro my_export_proc

	.globl _$0

	.endmacro


	.macro my_define_exported_proc

_$0:

	.endmacro


	.macro my_dispatch_table_begin

	.const
	.align 6
$0:

	.endmacro


	.macro my_dispatch_table_end

	.endmacro


	.macro my_dispatch_entry

	.long	$0

	.endmacro


	.macro my_code_begin

	.text

	.align 6

	.endmacro


	.macro my_code_end

	.endmacro


# ---- local data -----------


	.set fReg_D0, 0
	.set fReg_D1, 4
	.set fReg_D2, 8
	.set fReg_D3, 12
	.set fReg_D4, 16
	.set fReg_D5, 20
	.set fReg_D6, 24
	.set fReg_D7, 28
	.set fReg_A0, 32
	.set fReg_A1, 36
	.set fReg_A2, 40
	.set fReg_A3, 44
	.set fReg_A4, 48
	.set fReg_A5, 52
	.set fReg_A6, 56
	.set fReg_A7, 60
	.set fReg_pc_p, 64
	.set fReg_MaxCyclesToGo, 68
	.set fReg_pc, 72
	.set fReg_oldp, 76
	.set fReg_v, 80
	.set fReg_c, 81
	.set fReg_n, 82
	.set fReg_z, 83
	.set fReg_x, 84
	.set fReg_t1, 85
	.set fReg_s, 86
	.set fReg_TracePend, 87
	.set fReg_ExtIntPend, 88
	.set fReg_Pad0, 89
	.set fReg_Pad1, 90
	.set fReg_Pad2, 91
	.set fIPL, 92
	.set fReg_intmask, 96
	.set fReg_usp, 100
	.set fReg_isp, 104
	.set fReg_MoreCyclesToGo, 108
	.set fReg_opsize, 112
	.set fReg_ArgKind, 116
	.set fReg_ArgAddr, 120
	.set fReg_opcode, 124
	.set fReg_MATCrdB_cmpmask, 128
	.set fReg_MATCrdB_cmpvalu, 132
	.set fReg_MATCrdB_usemask, 136
	.set fReg_MATCrdB_usebase, 140
	.set fReg_MATCwrB_cmpmask, 144
	.set fReg_MATCwrB_cmpvalu, 148
	.set fReg_MATCwrB_usemask, 152
	.set fReg_MATCwrB_usebase, 156
	.set fReg_MATCrdW_cmpmask, 160
	.set fReg_MATCrdW_cmpvalu, 164
	.set fReg_MATCrdW_usemask, 168
	.set fReg_MATCrdW_usebase, 172
	.set fReg_MATCwrW_cmpmask, 176
	.set fReg_MATCwrW_cmpvalu, 180
	.set fReg_MATCwrW_usemask, 184
	.set fReg_MATCwrW_usebase, 188
	.set fReg_MATCex_cmpmask, 192
	.set fReg_MATCex_cmpvalu, 196
	.set fReg_MATCex_usemask, 200
	.set fReg_MATCex_usebase, 204
	.set fHeadATTel, 208
	.set fReg_ResidualCycles, 212
	.set fDecOpA, 216
	.set fDecOpB, 220
	.set fReg_fakeword, 224
	.set fReg_Pad3, 226
	.set fdisp_table, 256

	.lcomm	_regs, 524544, 6
